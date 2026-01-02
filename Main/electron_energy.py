            ### ###IMPORTS### ###
import pandas as pd
import os
from natsort import natsorted, index_natsorted, order_by_index
import numpy as np
import matplotlib.pyplot as plt

pd.options.mode.copy_on_write = True

            ### ###CLASS DEFINITIONS### ###

class Species:
    def __init__(self, name):
        self.name = name
        self.gain_reactions = []
        self.loss_reactions = []
        self.gain_mult = []
        self.loss_mult = []

class Reaction:
    def __init__(self, reaction):
        self.reaction = reaction
        self.coefficients = []
        self.reactants = []
        self.reactants_ids = []
        self.products = []
        self.products_ids = []
        self.rate = []

class Branch:
    def __init__(self, reaction_id, reactants, reactants_ids):
        self.reaction_id = reaction_id
        self.reactants = reactants
        self.reactants_ids = reactants_ids
        
            ### ###USER INPUTS### ###

#Gets list of file names from provided path
file = "340_out1_85.csv"

            ### ###READ CSVS### ###

#Initialize list to contain all data from import .csv files
csvs = []
rate_constants = []

#Initial readin of csv to pandas dataframe
raw_in = pd.read_csv(file)
#Seperates all columns with the header = 'rate_constant' since these are not needed
rcs = raw_in[[col for col in raw_in.columns if 'rate_constant' in col]]
raw_in = raw_in[[col for col in raw_in.columns if 'rate_constant' not in col]]
#Appends readin csv to csvs list
csvs.append(raw_in)
rate_constants.append(rcs)
    

#Uses first .csv readin to identify species names
#Copies in column names from 'csvs'
species = csvs[0].columns

#Removes items containing the string 'rate'
species = [i for i in species if 'rate' not in i]

#Remove other specified items that are not to be considered species
species.remove("Tg");species.remove("t");
species.remove("M");
species = list(filter(lambda x: "trig" not in x, species))
species = list(filter(lambda x: "rev" not in x, species))
species = list(filter(lambda x: "h" not in x, species))

species = [Species(item) for item in species]

            ### ###READIN REACTIONS### ###

#Readin reaction network from .txt file
#Just copy and paste from Zapdos file.  May need to slightly modify formatting
with open('Full_reactions.txt', 'r') as file:
    reactions = [Reaction(item) for item in file.readlines()]

for i, rxn in enumerate(reactions):
    #Splits off coefficients
    rxn = rxn.reaction.split(':')
     
    #Saves coefficients to list
    reactions[i].coefficients = rxn[1]
    
    #Splits off and saves products
    reactions[i].products = list(rxn[0].split('->')[1].strip().split(' + '))
    #Splits off and saves reactants
    reactions[i].reactants = list(rxn[0].split('->')[0].strip().split(' + '))

    for j, s in enumerate(species):
        if reactions[i].products.count(s.name) - reactions[i].reactants.count(s.name) > 0:
                        species[j].gain_reactions.append(i)
                        species[j].gain_mult.append(reactions[i].products.count(s.name) - reactions[i].reactants.count(s.name))
                        reactions[i].products_ids.append(j)
        elif reactions[i].reactants.count(s.name) - reactions[i].products.count(s.name) > 0:
                        species[j].loss_reactions.append(i)
                        species[j].loss_mult.append(reactions[i].reactants.count(s.name) - reactions[i].products.count(s.name))
                        reactions[i].reactants_ids.append(j)

for s in species:
    if s.name == 'e':
        electrons = s
    if s.name == 'time':
        time = s
        
time.t = raw_in['time']
time.dt = time.t.diff().shift(-1).fillna(0)
electrons.Ee = raw_in['Te']
electrons.dEe = electrons.Ee.diff().shift(-1).fillna(0)
electrons.dEe = electrons.dEe.mask(electrons.dEe <0, 0)
electrons.density = raw_in['e']
electrons.dd = electrons.density.diff().shift(-1).fillna(0)

electrons.loss_rates = raw_in[["rate"+str(i) for i in electrons.loss_reactions]].multiply(time.dt,axis=0)
electrons.loss_rate = electrons.loss_rates.sum(axis=1)
electrons.gain_rates = raw_in[["rate"+str(i) for i in electrons.gain_reactions]].multiply(time.dt,axis=0)
electrons.gain_rate = electrons.gain_rates.sum(axis=1)

electrons.calc_dd = electrons.gain_rate - electrons.loss_rate

electrons.energy_gain = ((electrons.density - electrons.loss_rate) * electrons.dEe + ((electrons.dEe + electrons.Ee) * electrons.gain_rate))  * 1.602e-19 * 0.0006 * 1000
electrons.energy_loss = electrons.loss_rate * electrons.Ee * 1.602e-19 * 0.0006 * 1000

electrons.energy_loss_reactions = list(range(0,60))
electrons.energy_gain_reactions = [0,1,15,16,17,21,22,24,27,28,29,30,31,32,36,40,41,42,54,58,59,64,65,68,93,110,119,126,149,150,151,174,175,267,272,285,286]
electrons.energy_gain_reactions_mult = [1,2,1,2,1,1,2,1,1,2,1,1,2,2,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]

electrons.loss_rate2 = raw_in[["rate"+str(i) for i in electrons.energy_loss_reactions]].sum(axis=1)
electrons.loss2 = electrons.loss_rate2 * time.dt
electrons.gain_rate2 = raw_in[["rate"+str(i) for i in electrons.energy_gain_reactions]].multiply(electrons.energy_gain_reactions_mult,axis=1).sum(axis=1)
electrons.gain2 = electrons.gain_rate2 * time.dt
kk = electrons.gain2 - electrons.loss2

electrons.energy_gain2 = ((electrons.density - electrons.loss2 * electrons.density/(electrons.density + electrons.gain2)) * electrons.dEe + ((electrons.dEe + electrons.Ee) * electrons.gain2)) * 1.602e-19 * 0.00006283 * 1e6


electrons.energy_gain3 = (electrons.density[0] * electrons.dEe[0] + ((electrons.dEe + electrons.Ee) * electrons.gain2)) * 1.602e-19 * 0.00006283 * 1e6



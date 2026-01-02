import pandas as pd
import os


files = [f for f in os.listdir() if all(s in f for s in ['fin', '.csv'])]
liq_files = [f for f in files if 'liq_35' in f]
files = sorted(list(set(files) - set(liq_files)))

Tgs = ['320', '340', '360', '380', '400', '420', '440', '460', '480', '500', '520', '540', '560']
fil_count = [3,4,5,6,7,8,9,10,12,13,14,15,16]
fil_index = [26,25,20,15,14,13,11,9,5,4,3,2,1]
fil_final = [24,23,22,21,19,18,17,16,12,10,8,7,6]

liq_out = pd.DataFrame()

for f in liq_files:
    csv_in = pd.read_csv(f)
    f_index = Tgs.index(f[4:7])
    liq_out = pd.concat([liq_out, csv_in.iloc[0,0:46]], axis=1)


liq_out.columns = liq_files
liq_out = liq_out.T
liq_out.to_csv('liq_out.csv')
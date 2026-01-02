import mooseutils
import pandas as pd
import os
import time

print(time.time())

exe = '/home/cdrobin5/projects/zapdos/zapdos-opt'

files = [f for f in os.listdir() if f.endswith('.i') and not(f.startswith('liq'))]
fil_count = [3,4,5,6,7,8,9,10,12,13,14,15,16]
fil_index = [26,25,20,15,14,13,11,9,5,4,3,2,1]
fil_final = [24,23,22,21,19,18,17,16,12,10,8,7,6]
csv_in =[]

t = time.localtime()
c = time.strftime("%H:%M:%S", t)
print("Start Time: ", c)
e_mult = 1
e_base = 1.025e9
N2_mult = 0.9
O2_mult = 0.1

for i,f in enumerate(files):
        
    fin_out = '{}_{}_{}'.format(f[:-2],'fin',fil_count[i])
    csv_in = pd.read_csv('{}.csv'.format(fin_out))
        
    print('Running liquid phase ' + f[:-2])
    exe_args = ['-i', 'liq.i',
            'Outputs/_1/file_base={}'.format('{}_{}'.format(f[:-2],'liq1')),
            'Outputs/_15/file_base={}'.format('{}_{}'.format(f[:-2],'liq15')),
            'Outputs/_out/file_base={}'.format('{}_{}'.format(f[:-2],'liq')),
            'Outputs/_fin/file_base={}'.format('fin_{}_{}'.format(f[:-2],'liq')),
            'Variables/Og/initial_condition = {}'.format(round(csv_in.O[fil_final[i]],4)),
            'Variables/O3g/initial_condition = {}'.format(round(csv_in.O3[fil_final[i]],4)),
            'Variables/NOg/initial_condition = {}'.format(round(csv_in.NO[fil_final[i]],4)),
            'Variables/N2Og/initial_condition = {}'.format(round(csv_in.N2O[fil_final[i]],4)),
            'Variables/NO2g/initial_condition = {}'.format(round(csv_in.NO2[fil_final[i]],4)),
            'Variables/NO3g/initial_condition = {}'.format(round(csv_in.NO3[fil_final[i]],4)),
            'Variables/N2O3g/initial_condition = {}'.format(round(csv_in.N2O3[fil_final[i]],4)),
            'Variables/N2O4g/initial_condition = {}'.format(round(csv_in.N2O4[fil_final[i]],4)),
            'Variables/N2O5g/initial_condition = {}'.format(round(csv_in.N2O5[fil_final[i]],4)),
            '''GlobalReactions/Air/equation_values = '300 3.1415926 8.6173e-5 0.32 0.84 33.33 44 1e-10 {} {} {} {} {} {} {} {} {}' '''.format(round(csv_in.N2O[fil_final[i]],4),round(csv_in.N2O3[fil_final[i]],4),round(csv_in.N2O4[fil_final[i]],4),round(csv_in.N2O5[fil_final[i]],4),round(csv_in.NO[fil_final[i]],4),round(csv_in.NO2[fil_final[i]],4),round(csv_in.NO3[fil_final[i]],4),round(csv_in.O[fil_final[i]],4),round(csv_in.O3[fil_final[i]],4))]
            
    out = mooseutils.run_executable(exe, *exe_args, suppress_output=True)
            
            
        
        
t = time.localtime()
c = time.strftime("%H:%M:%S", t)
print("End Time: ", c)
        
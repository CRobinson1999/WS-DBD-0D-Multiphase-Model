import mooseutils
import pandas as pd
import os
import time

print(time.time())

exe = '/home/cdrobin5/projects/zapdos/zapdos-opt'

files = ['560..']
fil_count = [16]
fil_index = [1]
fil_final = [6]
csv_in =[]

t = time.localtime()
c = time.strftime("%H:%M:%S", t)
print("Start Time: ", c)
e_mult = 1
e_base = 1.025e9
N2_mult = 0.9
O2_mult = 0.1
liq_rec = 36

for i,f in enumerate(files):
    for k in range(1,liq_rec):
        print('Running {} bubble #{}'.format(f,k))
            

        if k == 1:
            fin_out = '{}_{}_{}'.format(f[:-2],'fin',fil_count[i])
            csv_in = pd.read_csv('{}.csv'.format(fin_out))
            print(fin_out)
            liq_out = 'fin_{}_{}_{}'.format(f[:-2],'liq',k)
            exe_args = ['-i', 'liq.i',
                        'Outputs/_1/file_base={}'.format('{}_{}_{}'.format(f[:-2],'liq1',k)),
                        'Outputs/_fin/file_base={}'.format(liq_out),
                        'Variables/Og/initial_condition = {}'.format(round(csv_in.O[fil_final[i]],4)),
                        'Variables/O3g/initial_condition = {}'.format(round(csv_in.O3[fil_final[i]],4)),
                        'Variables/NOg/initial_condition = {}'.format(round(csv_in.NO[fil_final[i]],4)),
                        'Variables/N2Og/initial_condition = {}'.format(round(csv_in.N2O[fil_final[i]],4)),
                        'Variables/NO2g/initial_condition = {}'.format(round(csv_in.NO2[fil_final[i]],4)),
                        'Variables/NO3g/initial_condition = {}'.format(round(csv_in.NO3[fil_final[i]],4)),
                        'Variables/N2O3g/initial_condition = {}'.format(round(csv_in.N2O3[fil_final[i]],4)),
                        'Variables/N2O4g/initial_condition = {}'.format(round(csv_in.N2O4[fil_final[i]],4)),
                        'Variables/N2O5g/initial_condition = {}'.format(round(csv_in.N2O5[fil_final[i]],4)),
                        '''GlobalReactions/Air/equation_values = '300 3.1415926 8.6173e-5 0.346 1.654 27.91 41.31 1e-10 {} {} {} {} {} {} {} {} {}' '''.format(round(csv_in.N2O[fil_final[i]],4),round(csv_in.N2O3[fil_final[i]],4),round(csv_in.N2O4[fil_final[i]],4),round(csv_in.N2O5[fil_final[i]],4),round(csv_in.NO[fil_final[i]],4),round(csv_in.NO2[fil_final[i]],4),round(csv_in.NO3[fil_final[i]],4),round(csv_in.O[fil_final[i]],4),round(csv_in.O3[fil_final[i]],4))]
        else:
            liq_in = pd.read_csv('{}.csv'.format(liq_out))
            liq_out = 'fin_{}_{}_{}'.format(f[:-2],'liq',k)
            exe_args = ['-i', 'liq.i',
                        'Outputs/_1/file_base={}'.format('{}_{}_{}'.format(f[:-2],'liq1',k)),
                        'Outputs/_fin/file_base={}'.format(liq_out),
                        'Variables/H/initial_condition = {}'.format(round(liq_in.H[0],4)),
                        'Variables/H2/initial_condition = {}'.format(round(liq_in.H2[0],4)),
                        'Variables/H2O2/initial_condition = {}'.format(round(liq_in.H2O2[0],4)),
                        'Variables/H3Op/initial_condition = {}'.format(round(liq_in.H3Op[0],4)),
                        'Variables/HNO/initial_condition = {}'.format(round(liq_in.HNO[0],4)),
                        'Variables/HNO2/initial_condition = {}'.format(round(liq_in.HNO2[0],4)),
                        'Variables/HNO3/initial_condition = {}'.format(round(liq_in.HNO3[0],4)),
                        'Variables/HO2/initial_condition = {}'.format(round(liq_in.HO2[0],4)),
                        'Variables/N2O/initial_condition = {}'.format(round(liq_in.N2O[0],4)),
                        'Variables/N2O3/initial_condition = {}'.format(round(liq_in.N2O3[0],4)),
                        'Variables/N2O4/initial_condition = {}'.format(round(liq_in.N2O4[0],4)),
                        'Variables/N2O5/initial_condition = {}'.format(round(liq_in.N2O5[0],4)),
                        'Variables/NO/initial_condition = {}'.format(round(liq_in.NO[0],4)),
                        'Variables/NO2/initial_condition = {}'.format(round(liq_in.NO2[0],4)),
                        'Variables/NO3/initial_condition = {}'.format(round(liq_in.NO3[0],4)),
                        'Variables/NO2n/initial_condition = {}'.format(round(liq_in.NO2n[0],4)),
                        'Variables/NO3n/initial_condition = {}'.format(round(liq_in.NO3n[0],4)),
                        'Variables/O/initial_condition = {}'.format(round(liq_in.O[0],4)),
                        'Variables/O2n/initial_condition = {}'.format(round(liq_in.O2n[0],4)),
                        'Variables/O3/initial_condition = {}'.format(round(liq_in.O3[0],4)),
                        'Variables/O3n/initial_condition = {}'.format(round(liq_in.O3n[0],4)),
                        'Variables/OH/initial_condition = {}'.format(round(liq_in.OH[0],4)),
                        'Variables/OHn/initial_condition = {}'.format(round(liq_in.OHn[0],4)),
                        'Variables/ONOOH/initial_condition = {}'.format(round(liq_in.ONOOH[0],4)),
                        'Variables/On/initial_condition = {}'.format(round(liq_in.On[0],4)),
                        'Variables/Og/initial_condition = {}'.format(round(csv_in.O[fil_final[i]],4)),
                        'Variables/O3g/initial_condition = {}'.format(round(csv_in.O3[fil_final[i]],4)),
                        'Variables/NOg/initial_condition = {}'.format(round(csv_in.NO[fil_final[i]],4)),
                        'Variables/N2Og/initial_condition = {}'.format(round(csv_in.N2O[fil_final[i]],4)),
                        'Variables/NO2g/initial_condition = {}'.format(round(csv_in.NO2[fil_final[i]],4)),
                        'Variables/NO3g/initial_condition = {}'.format(round(csv_in.NO3[fil_final[i]],4)),
                        'Variables/N2O3g/initial_condition = {}'.format(round(csv_in.N2O3[fil_final[i]],4)),
                        'Variables/N2O4g/initial_condition = {}'.format(round(csv_in.N2O4[fil_final[i]],4)),
                        'Variables/N2O5g/initial_condition = {}'.format(round(csv_in.N2O5[fil_final[i]],4)),
                        '''GlobalReactions/Air/equation_values = '300 3.1415926 8.6173e-5 0.346 1.654 27.91 41.31 1e-10 {} {} {} {} {} {} {} {} {}' '''.format(round(csv_in.N2O[fil_final[i]],4),round(csv_in.N2O3[fil_final[i]],4),round(csv_in.N2O4[fil_final[i]],4),round(csv_in.N2O5[fil_final[i]],4),round(csv_in.NO[fil_final[i]],4),round(csv_in.NO2[fil_final[i]],4),round(csv_in.NO3[fil_final[i]],4),round(csv_in.O[fil_final[i]],4),round(csv_in.O3[fil_final[i]],4))]

        out = mooseutils.run_executable(exe, *exe_args, suppress_output=True)
            
            
        
        
t = time.localtime()
c = time.strftime("%H:%M:%S", t)
print("End Time: ", c)
        
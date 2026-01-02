import mooseutils
import pandas as pd
import os
import time

print(time.time())

exe = '/home/cdrobin5/projects/zapdos/zapdos-opt'

files = ['540.i','560.i']
fil_count = [15,16]
fil_index = [2,1]
fil_final = [7,6]
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
        for j in range(1,fil_count[i]+1):
            print('Running {} filament #{}-{}'.format(f,k,j))
            
            fin_out = '{}_{}_{}-{}'.format(f[:-2],'fin',k,j)
            full_out = '{}_{}_{}-{}'.format(f[:-2],'full',k,j)
            
            if j == 1 and k == 1:
                exe_args = ['-i', f,
                            'Outputs/fin/file_base={}'.format(fin_out),
                            'Outputs/out1/file_base={}'.format(full_out),
                            'Variables/e/initial_condition = {}'.format(e_base*e_mult),
                            'Variables/O2p/initial_condition = {}'.format(e_base*e_mult*O2_mult),
                            'Variables/N2p/initial_condition = {}'.format(e_base*e_mult*N2_mult)
                            ]
            elif j == 1:
                print('Using file: {}'.format(liq_out))
                csv_in = pd.read_csv('{}.csv'.format(liq_out))
                exe_args = ['-i', f,
                            'Outputs/fin/file_base={}'.format(fin_out),
                            'Outputs/out1/file_base={}'.format(full_out),
                            'Variables/e/initial_condition = {}'.format(e_base*e_mult),
                            'Variables/O2p/initial_condition = {}'.format(e_base*e_mult*O2_mult),
                            'Variables/N2p/initial_condition = {}'.format(e_base*e_mult*N2_mult),
                            'Variables/O/initial_condition = {}'.format(round(csv_in.Og[0],4)),
                            'Variables/O3/initial_condition = {}'.format(round(csv_in.O3g[0],4)),
                            'Variables/NO/initial_condition = {}'.format(round(csv_in.NOg[0],4)),
                            'Variables/N2O/initial_condition = {}'.format(round(csv_in.N2Og[0],4)),
                            'Variables/NO2/initial_condition = {}'.format(round(csv_in.NO2g[0],4)),
                            'Variables/NO3/initial_condition = {}'.format(round(csv_in.NO3g[0],4)),
                            'Variables/N2O3/initial_condition = {}'.format(round(csv_in.N2O3g[0],4)),
                            'Variables/N2O4/initial_condition = {}'.format(round(csv_in.N2O4g[0],4)),
                            'Variables/N2O5/initial_condition = {}'.format(round(csv_in.N2O5g[0],4))]
                
            else:
                print('Using file: {}'.format(prev_file))
                exe_args = ['-i', f,
                            'Outputs/fin/file_base={}'.format(fin_out),
                            'Outputs/out1/file_base={}'.format(full_out),
                            'Variables/e/initial_condition = {}'.format(e_base*e_mult),
                            'Variables/O2p/initial_condition = {}'.format(e_base*e_mult*O2_mult),
                            'Variables/N2p/initial_condition = {}'.format(e_base*e_mult*N2_mult),
                            'Variables/Np/initial_condition = {}'.format(round(csv_in.Np[fil_index[i]],4)),
                            'Variables/N3p/initial_condition = {}'.format(round(csv_in.N3p[fil_index[i]],4)),
                            'Variables/N4p/initial_condition = {}'.format(round(csv_in.N4p[fil_index[i]],4)),
                            'Variables/Op/initial_condition = {}'.format(round(csv_in.Op[fil_index[i]],4)),
                            'Variables/O4p/initial_condition = {}'.format(round(csv_in.O4p[fil_index[i]],4)),
                            'Variables/NOp/initial_condition = {}'.format(round(csv_in.NOp[fil_index[i]],4)),
                            'Variables/NO2p/initial_condition = {}'.format(round(csv_in.NO2p[fil_index[i]],4)),
                            'Variables/On/initial_condition = {}'.format(round(csv_in.On[fil_index[i]],4)),
                            'Variables/O2n/initial_condition = {}'.format(round(csv_in.O2n[fil_index[i]],4)),
                            'Variables/O3n/initial_condition = {}'.format(round(csv_in.O3n[fil_index[i]],4)),
                            'Variables/NOn/initial_condition = {}'.format(round(csv_in.NOn[fil_index[i]],4)),
                            'Variables/NO2n/initial_condition = {}'.format(round(csv_in.NO2n[fil_index[i]],4)),
                            'Variables/NO3n/initial_condition = {}'.format(round(csv_in.NO3n[fil_index[i]],4)),
                            'Variables/N2D/initial_condition = {}'.format(round(csv_in.N2D[fil_index[i]],4)),
                            'Variables/N2A3/initial_condition = {}'.format(round(csv_in.N2A3[fil_index[i]],4)),
                            'Variables/O1D/initial_condition = {}'.format(round(csv_in.O1D[fil_index[i]],4)),
                            'Variables/N/initial_condition = {}'.format(round(csv_in.N[fil_index[i]],4)),
                            'Variables/O/initial_condition = {}'.format(round(csv_in.O[fil_index[i]],4)),
                            'Variables/O2a/initial_condition = {}'.format(round(csv_in.O2a[fil_index[i]],4)),
                            'Variables/O3/initial_condition = {}'.format(round(csv_in.O3[fil_index[i]],4)),
                            'Variables/NO/initial_condition = {}'.format(round(csv_in.NO[fil_index[i]],4)),
                            'Variables/N2O/initial_condition = {}'.format(round(csv_in.N2O[fil_index[i]],4)),
                            'Variables/N2Op/initial_condition = {}'.format(round(csv_in.N2Op[fil_index[i]],4)),
                            'Variables/N2On/initial_condition = {}'.format(round(csv_in.N2On[fil_index[i]],4)),
                            'Variables/NO2/initial_condition = {}'.format(round(csv_in.NO2[fil_index[i]],4)),
                            'Variables/NO3/initial_condition = {}'.format(round(csv_in.NO3[fil_index[i]],4)),
                            'Variables/N2O3/initial_condition = {}'.format(round(csv_in.N2O3[fil_index[i]],4)),
                            'Variables/N2O4/initial_condition = {}'.format(round(csv_in.N2O4[fil_index[i]],4)),
                            'Variables/N2O5/initial_condition = {}'.format(round(csv_in.N2O5[fil_index[i]],4)),
                            'Variables/O4n/initial_condition = {}'.format(round(csv_in.O4n[fil_index[i]],4))]
                
            out = mooseutils.run_executable(exe, *exe_args, suppress_output=True)
            
            csv_in = pd.read_csv('{}.csv'.format(fin_out))
            prev_file = fin_out
            
            if j == max(range(1, fil_count[i]+1)):
                print('Running liquid phase ' + f[:-2])
                if k == 1:
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

                out = mooseutils.run_executable(exe, *exe_args, suppress_output=False)
            
            
        
        
t = time.localtime()
c = time.strftime("%H:%M:%S", t)
print("End Time: ", c)
        
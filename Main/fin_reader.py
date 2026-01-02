import pandas as pd
import os


files = [f for f in os.listdir() if all(s in f for s in ['fin', '.csv'])]
liq_files = [f for f in files if 'liq' in f]
files = sorted(list(set(files) - set(liq_files)))

Tgs = ['320', '340', '360', '380', '400', '420', '440', '460', '480', '500', '520', '540', '560']
fil_count = [3,4,5,6,7,8,9,10,12,13,14,15,16]
fil_index = [26,25,20,15,14,13,11,9,5,4,3,2,1]
fil_final = [24,23,22,21,19,18,17,16,12,10,8,7,6]

f_out = pd.DataFrame()

i = 1
for f in files:
    csv_in = pd.read_csv(f)
    f_index = Tgs.index(f[0:3])
    f_n = f.split('_fin')[1].split('.csv')[0]
    
    if i == fil_count[f_index]:
        f_out = pd.concat([f_out, csv_in.iloc[fil_final[f_index],2:36]], axis=1)
        i = 1
        
    else: 
        f_out = pd.concat([f_out, csv_in.iloc[fil_index[f_index],2:36]], axis=1)
        i = i + 1

f_out.columns = files
f_out = f_out.T

for i in range(max(fil_count)):
    locals()['fil_{}'.format(str(i+1))] = f_out[f_out.index.str.endswith('_{}.csv'.format(str(i+1)))]
    if len(locals()['fil_{}'.format(str(i+1))]) < 13:
        locals()['fil_{}'.format(str(i+1))] = pd.concat([locals()['fil_{}'.format(str(i+1))], locals()['fil_{}'.format(str(i))].iloc[0:13-len(locals()['fil_{}'.format(str(i+1))])]]).sort_index()
    locals()['fil_{}'.format(str(i+1))].to_csv('fil_{}.csv'.format(str(i+1)))

liq_out = pd.DataFrame()

for f in liq_files:
    csv_in = pd.read_csv(f)
    f_index = Tgs.index(f[4:7])
    liq_out = pd.concat([liq_out, csv_in.iloc[0,0:46]], axis=1)


liq_out.columns = liq_files
liq_out = liq_out.T
liq_out.to_csv('liq_out.csv')
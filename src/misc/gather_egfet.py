import pandas as pd
import datetime
import re
from glob import glob
from src import project_dir

def convert(date_time):
    format = '%Y.%m.%d-%H.%M.%S.%f'
    datetime_str = datetime.datetime.strptime(date_time, format)


for i in range(2, 9):
    for j in range(1, 4):
            
        eval_files = glob(f'{project_dir}/saved_logs/egfet/ga_mult_int{i}b_egfet_{j}*/eval_results.csv')
        if len(eval_files) > 1:
            dates = []
            for file in eval_files:
                datestr = re.search('saved_logs/egfet/ga_mult_int\d+b_egfet_\d+___(.+?)/eval_results.csv', file).group(1)
                dates.append(convert(datestr))
            # select the newest directory
            eval_file = sorted(eval_files, reverse=True)[0]
        else:
            eval_file = eval_files[0]

        df = pd.read_csv(eval_file)
        df['MultPrecision'] = i
        df['MultID'] = j

        if i == 2 and j == 1:
            alldf = df
        else:
            alldf = pd.concat([alldf, df])

        print(f'Loaded {eval_file}')

saved_results = glob(f'{project_dir}/results/egfet_bespoke_multipliers*.csv')
savefile=f'{project_dir}/results/egfet_bespoke_multipliers{len(saved_results)}.csv'
alldf.to_csv(savefile, index=False)
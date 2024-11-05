import pandas as pd
from glob import glob
from src import project_dir


for i in range(2, 9):
    for j in range(1, 4):
            
        eval_file = glob(f'{project_dir}/saved_logs/egfet/ga_mult_int{i}b_egfet_{j}*/eval_results.csv')
        assert len(eval_file) == 1
        eval_file = eval_file[0]
        df = pd.read_csv(eval_file)
        df['MultPrecision'] = i
        df['MultID'] = j

        if i == 2 and j == 1:
            alldf = df
        else:
            alldf = pd.concat([alldf, df])

alldf.to_csv(f'{project_dir}/results/egfet_bespoke_multipliers.csv', index=False)
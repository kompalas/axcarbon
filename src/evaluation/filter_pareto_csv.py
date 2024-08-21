import argparse
import pandas as pd
import re
from src.nsga2.utils import hw_metric_arg, error_metric_arg


class Individual():
    """Mock-class for NSGA Individual"""
    def __init__(self, index, hw_metric, error_metric,
                 domination_count=0, rank=None, dominated_solutions=set()):
        self.index = index
        self.hw_metric = hw_metric
        self.error_metric = error_metric
        self.domination_count = domination_count
        self.rank = rank
        self.dominated_solutions = dominated_solutions

    def dominates(self, other):
        """Check if ind1 (self) dominated ind2 (other)"""
        and_condition = self.error_metric <= other.error_metric and self.hw_metric <= other.hw_metric
        or_condition = self.error_metric < other.error_metric or self.hw_metric < other.hw_metric
        return (and_condition or or_condition)


def check_dominance(population):
    """Basically fast non-dominated sort"""
    fronts = [[]]
    for individual in population:
        individual.domination_count = 0
        individual.dominated_solutions = []
        for other_individual in population:
            if individual.dominates(other_individual):
                individual.dominated_solutions.append(other_individual)
            elif other_individual.dominates(individual):
                individual.domination_count += 1
        if individual.domination_count == 0:
            individual.rank = 0
            fronts[0].append(individual)
    i = 0
    while len(fronts[i]) > 0:
        temp = []
        for individual in fronts[i]:
            for other_individual in individual.dominated_solutions:
                other_individual.domination_count -= 1
                if other_individual.domination_count == 0:
                    other_individual.rank = i+1
                    temp.append(other_individual)
        i = i+1
        fronts.append(temp)
    return fronts[0]


def keep_non_dominated(results_df, hw_metric, error_metric):
    """Find merged pareto and return them
    in initial order as a population of Individuals"""
    population = []
    hw_metric_col = next(column for column in results_df.columns if hw_metric.name.lower() == column.lower())
    error_metric_col = next(column for column in results_df.columns if error_metric.name.lower() == column.lower())

    for _, solution_row in results_df.iterrows():
        population.append(
            Individual(
                index=solution_row['NetlID'],
                hw_metric=solution_row[hw_metric_col],
                error_metric=solution_row[error_metric_col]
            )
        )

    pareto_front = check_dominance(population)
    pareto_df = pd.DataFrame(columns=results_df.columns)
    for ind in sorted(pareto_front, key=lambda ind: ind.index):
        pareto_df.loc[len(pareto_df.index)] = results_df.loc[results_df['NetlID'] == ind.index].iloc[0]
    return pareto_df


def process_csv_file(input_csv_file, hw_metric, error_metric, output_csv_file=None):
    """Process CSV file and save pareto front to another CSV file"""
    df = pd.read_csv(input_csv_file)
    print('Original data:\n', df)
    pareto_front = keep_non_dominated(df, hw_metric, error_metric)
    print('Pareto front:\n', pareto_front)
    if output_csv_file is None:
        output_csv_file = re.sub('[.]csv$', '_pareto.csv', input_csv_file)
    pareto_front.to_csv(output_csv_file, index=False)
    print(f'Pareto front saved to {output_csv_file}')


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Process a CSV file.')
    parser.add_argument('--input-csv-file', type=str, help='Path to the CSV file')
    parser.add_argument('--output-csv-file', type=str, help='Path to the output CSV file')
    parser.add_argument('--hw-metric', type=hw_metric_arg, default='delay', help='Choose a hardware metric')
    parser.add_argument('--error-metric', type=error_metric_arg, default='nmed', help='Choose an error metric')
    args = parser.parse_args()

    process_csv_file(**vars(args))

import random
import logging
from functools import partial
from src.nsga2.individual import Individual
from src.nsga2.utils import GeneType

logger = logging.getLogger(__name__)


class Problem:
    """Class to keep chromosome-specific attributes"""
    def __init__(
            self, objective_functions, num_of_variables, variables_range, variable_type,
            baseline_data_file=None, weighted_variables=None, biased_indices=None,
            initial_weight=None, overrides=None
        ):

        self.num_of_objectives = len(objective_functions)
        self.num_of_variables = num_of_variables
        self.variables_range = variables_range
        self.variable_type = variable_type
        self.resdir = logging.getLogger().logdir

        self.objective_functions = objective_functions
        self.max_objectives = [None] * len(objective_functions)
        self.min_objectives = [None] * len(objective_functions)

        # baseline data
        self.baseline_file = baseline_data_file
        try:
            self.baseline_data = self.get_baseline_data()
            logger.debug(f"Baseline data: {self.baseline_data}")
        except (FileNotFoundError, ValueError):
            logger.error(f"Invalid baseline file {self.baseline_file}. Baseline data will not be used for this run.")
            self.baseline_data = None

        self.variable_weights = self.get_variable_weights() if weighted_variables else None
        self.biased_indices = biased_indices
        self.initial_weight = initial_weight
        self.overrides = overrides

        # configure function to generate new random individuals
        self.__generation_factory = {
            GeneType.Continuous: self.generate_individual_continuous,
            GeneType.Discrete: partial(
                self.generate_individual_discrete,
                overrides=self.overrides
            )
            if self.biased_indices is None else partial(
                self.generate_individual_discrete_cp_bias,
                biased_indices=self.biased_indices,
                overrides=self.overrides
            )
        }
        self.generate_individual = self.__generation_factory.get(self.variable_type)

    def calculate_objectives(self, individual, thread_index=None):
        """Wrapper function for calculating objectives"""
        individual.calculate_objectives(thread_index=thread_index)

    def set_max_min_objectives(self, population):
        """Set the max and min objectives for the population"""
        for individual in population:
            for m in range(self.num_of_objectives):
                if self.min_objectives[m] is None or individual.objectives[m] < self.min_objectives[m]:
                    self.min_objectives[m] = individual.objectives[m]
                if self.max_objectives[m] is None or individual.objectives[m] > self.max_objectives[m]:
                    self.max_objectives[m] = individual.objectives[m]
        assert self.max_objectives != [None] * self.num_of_objectives
        assert self.min_objectives != [None] * self.num_of_objectives

    def generate_individual_continuous(self, overrides=None):
        """Generate individual with real-valued genes"""
        individual = Individual(self.objective_functions)
        features = [random.uniform(*x) for x in self.variables_range]

        # use a dictionary called 'overrides' to set specific features (indices are keys) to desired values
        if overrides:
            for index, value in overrides.items():
                features[index] = value

        individual.set_features(features)
        return individual

    def generate_individual_discrete(self, overrides=None):
        """Generate individual with discrete-valued random genes, weighted towards a value"""
        # last option gets a higher chance of being selected
        # TODO: consider not hard coding the weights
        individual = Individual(self.objective_functions)
        features = [
            random.choices(
                variable_range, weights=[1]*(len(variable_range) - 1) + [self.initial_weight], k=1
            )[0]
            for variable_range in self.variables_range
        ]

        # use a dictionary called 'overrides' to set specific features (indices are keys) to desired values
        if overrides:
            for index, value in overrides.items():
                features[index] = value

        individual.set_features(features)
        return individual

    def generate_individual_discrete_cp_bias(self, biased_indices, genes_to_set=2, overrides=None):
        """Generate individual with discrete-valued genes, weighted towards a value. Genes at biased indices will
        gear towards lower values of the variable range"""
        individual = Individual(self.objective_functions)
        features = [
            random.choices(
                variable_range, weights=[1] * (len(variable_range) - 1) + [self.initial_weight], k=1
            )[0]
            for variable_range in self.variables_range
        ]
        genes_to_set = biased_indices if genes_to_set > len(biased_indices) else genes_to_set

        # sample a subset of the biased indices and set it to a random value
        # that doesn't include the last possible value
        for gene_idx in random.sample(biased_indices, k=genes_to_set):
            features[gene_idx] = random.choice(self.variables_range[gene_idx][:-1])

        # use a dictionary called 'overrides' to set specific features (indices are keys) to desired values
        if overrides:
            for index, value in overrides.items():
                features[index] = value

        individual.set_features(features)
        return individual

    def get_baseline_data(self):
        """Get information of baseline circuit"""
        # NOTE: this function is case specific
        if self.baseline_file is None:
            raise FileNotFoundError

        # get column names of the baseline results file
        with open(self.baseline_file, "r") as f:
            data = f.read()
        names = data.split()[:data.split().index('count')]
        if 'Error' not in names:
            names[names.index('MED')] = 'Error'

        # return the summarized baseline mc file as dataframe
        baseline_df = pd.read_csv(
            self.baseline_file, sep='[\s\t]+', engine='python', skiprows=1, index_col=0, names=names
        )
        return baseline_df

    def get_variable_weights(self):
        """Attatch a weight to each gene of the chromosome"""
        # NOTE: this way, the MSB wire is assigned the largest weight
        #  assign a number [0.1, 0.8] to each gene. Genes later in the candidate list (closer to msb)
        #  are assigned a higher weight
        weights = np.linspace(start=0.1, stop=0.8, num=self.num_of_variables, endpoint=False)
        return weights



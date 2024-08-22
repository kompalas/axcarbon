import re
import logging
import argparse
import pickle
from enum import Enum
from multiprocessing import cpu_count
import warnings

__all__ = [    
    'ga_args', 'validate_ga_args',
    'get_candidates', 'reduce_candidates',
    'sanity_test',
    'crossover_param_type',
    'GeneType', 'str_to_gene_type_map', 'gene_type_arg',
    'ErrorMetric', 'str_to_error_metric_map', 'error_metric_arg',
    'HW_Metric', 'str_to_hw_metric_map', 'hw_metric_arg',
]

logger = logging.getLogger(__name__)


def ga_args(parser):
    """Include arguments for running a genetic algorithm"""
    ga_args = parser.add_argument_group("GA-specific arguments")
    ga_args.add_argument('--load-population-from', dest='loaded_population',
                         help='Load the initial population from the specified pickle file.')
    ga_args.add_argument("--generations", "--gens", type=int, default=10,
                         help="Select number of generations. Default is 10 generations")
    ga_args.add_argument("--population-size", "--pop", type=int, dest='population_size', default=10,
                         help="Select size of the population. Default is 10 individuals")
    ga_args.add_argument("--tournament-participants", "--tpart", type=float, dest='tournament_participants',
                         help="Select percentage of population for participation in tournament selection. Default is 5%% of the population")
    ga_args.add_argument("--tournament-probability", "--tprob", type=float, dest='tournament_probability', default=0.8,
                         help="Select probability for tournament selection [0, 1]. Default is 0.8")
    ga_args.add_argument("--crossover-probability", "--cprob",  type=crossover_param_type, dest='crossover_probability', default=0.95,
                         help="Select probability for crossover [0, 1] or 'adj' for adjusted crossover probability. Default is 0.95")
    ga_args.add_argument("--mutation-probability", "--mprob", type=float, dest='mutation_probability',
                         help="Select probability for mutation [0, 1]. Default is the reversed chromosome length")
    ga_args.add_argument("--threads", type=int, default=1,  # default=multiprocessing.cpu_count(),
                         help="Specify the number of threads to use for parallel execution. Default is 1 for serial execution")
    ga_args.add_argument("--save-frequency", '--sf', type=int, default=1, dest='save_frequency',
                         help="Specify the frequency of saving the population results, in terms of generations."
                              " Default is 1 for saving every generation")
    ga_args.add_argument("--candidate-type", "--ct", dest="candidate_type", type=str, choices=['constant', 'constant_best', 'all', 'all_best'],
                         help="Define the type of approximation candidates (and genes). Possbile choices: constant: "
                              "Replace each wire with '0' or '1' | constant_all: Replace each wire with its most "
                              "frequent constant value ('0' or '1'), depending on its toggle count | all: Replace "
                              "each wire with '0', '1' or with another wire with maximum time similarity | all_best: "
                              "Replace each wire with the option of highest time similarity: either the value of its "
                              "maximum toggle count ('0' or '1') or with the wire closest in time similarity")
    ga_args.add_argument("--reduced", action='store_true',
                         help="Set to use reduced chromosomes with probabilistic critical path participation")
    ga_args.add_argument("--constrained", type=int, default=1,
                         help="Set the dividing factor to the maximum baseline error as a constraint. Solutions of "   
                              "error higher than the constraint will not be considered")
    ga_args.add_argument('--gene-type', '--gt', type=gene_type_arg, default='int', dest='gene_type',
                         help="Specify the numerical type of chromosome genes. Choices {' | '.join(str_to_gene_type_map.keys())}."
                              " Default is integer-based genes.")
    ga_args.add_argument("--weighted-genes", '--wg', action='store_true', dest='weighted_genes',
                         help="Set for applying a weight to each gene of the chromosome. The weight acts as "
                              "another probability during mutation, so that highly weighted genes are mutated"
                              "less often. Weights increase gradually towards the output of the DAG")
    ga_args.add_argument("--unweighted-individuals", '--uwi', dest='unweighted_new_individuals', action='store_false',
                         help="Set for NOT applying weights to newly generated individuals (weights are applied"
                              " by default). Weights encourage wires comprised in the critical path of the DAG to"
                              " be approximated during chromosome initialization.")
    ga_args.add_argument("--override", "--ov", action='store_true',
                         help="Set to use the best precision scaling result, including the standard random "
                              "approximations at every stage where a new individual is created")
    ga_args.add_argument("--initial-weight", '-iw', dest='initial_weight', type=int, default=50,
                         help='Set the initial weight towards non-approximated wires as an integer '
                              '(default is 50:1 weight)')
    ga_args.add_argument("--error-metric", dest="error_metric", type=error_metric_arg,
                         help="Choose the error metric as one of the objectives for the GA. Choices: "
                              "{' | '.join(str_to_error_metric_map)}. Default is NMED")
    ga_args.add_argument("--hw-metric", dest="hw_metric", type=hw_metric_arg,
                            help="Choose the hardware metric as one of the objectives for the GA. Choices: "
                                "{' | '.join(str_to_hw_metric_map)}. Default is delay")
    return parser


def validate_ga_args(args):
    """Configure command-line arguments and check for errors"""
    assert args.generations >= 1, \
        f"Invalid number of generations {args.generations}. Set a positive number of generations."
    assert args.population_size >= 1, \
        f"Invalid population size {args.population_size}. Set a positive number for the population size."
    assert args.mutation_probability is None or 0 <= args.mutation_probability <= 1, \
        f"Invalid mutation probability {args.mutation_probability}. Set mutation probability to " \
        f"a real number between 0 and 1."
    if args.crossover_probability is not None:
        assert 0 <= args.crossover_probability <= 1, \
            f"Invalid crossover probability {args.crossover_probability}. Set crossover probability to a " \
            f"real number between 0 and 1."
    if args.tournament_participants is not None:
        assert 0 < args.tournament_participants < 1,\
            f"Invalid percentage of tournament participants {args.tournament_participants}. Select a float number " \
            f"between 0 and 1, without 0 or 1."
    assert 0 <= args.tournament_probability <= 1, \
        f"Invalid tournament probability {args.tournament_probability}. Set tournament probability to a real number " \
        f"between 0 and 1."
    assert args.threads > 0,\
        f"Invalid number of threads given {args.threads}. Set as a positive integer."
    if args.threads > cpu_count():
        warnings.warn(f"Number of threads too large ({args.threads}). Setting to maximum available number of"
                      f"threads: {cpu_count()}")
        args.threads = cpu_count()
    assert 0 < args.save_frequency <= args.generations,\
        f"Invalid frequency {args.save_frequency}. Set a positive integer, that doesn't exceed" \
        f" the number of generations ({args.generations})"


def get_candidates(netlist, graph, candidate_type='constant', reduced=True, results_dir=None):
    """Get approximation candidates from netlist"""
    # candidates is a list of strings, including selected wires of the netlist
    # NOTE: if using ctypes for error calculation, make sure netlist.net_id follows the same order of wires!
    if candidate_type is None:
        candidates = netlist.netlist_data['wires'] + netlist.netlist_data['outputs']
    elif candidate_type == 'constant':
        candidates = netlist.netlist_data['wires'] + netlist.netlist_data['outputs'] + netlist.netlist_data['inputs']
        netlist.update_net_id_with_inputs()
    else:
        raise NotImplementedError

    if reduced:
        candidates = reduce_candidates(candidates, netlist, graph)
    variables_range = [(0, 1, -1) for _ in range(len(candidates))]

    # if results_dir is not None and len(candidates) != len(netlist.netlist_data['wires'] + netlist.netlist_data['outputs']):
    if results_dir is not None:
        with open(f"{results_dir}/candidates.pkl", "wb") as f:
            pickle.dump(candidates, f)
        logger.info(f"Saved candidates in {results_dir}/candidates.pkl")

    return candidates, variables_range


def reduce_candidates(candidates, netlist, graph):
    """Reduce candidates by taking into account the probability that a node can
    participate in the critical path"""
    # TODO: find a way to reduce the chromosome
    graph.cp_probability_assignment()
    unlikely_nodes = [graph.get_node[n] for n in graph.top_sort if graph.cp_prob[n] <= 0.01]
    nets_of_unlikely_nodes = [outnet for node in unlikely_nodes for outnet in node.output_wires]
    reduced_candidates = [net for net in candidates if net not in nets_of_unlikely_nodes]

    raise NotImplementedError
    netlist.update_net_id_with_inputs()
    return reduced_candidates


def sanity_test(objective_function, variables_range):
    dummy_chr = [variable_range[-1] for variable_range in variables_range]
    fit = objective_function(dummy_chr, sanity_test=True)
    assert fit[0] == 0, f"Sanity test failed, accurate circuit produces {fit[0]} error. " \
                        f"Check the error estimation method."


def crossover_param_type(string):
    """Define a new type to parse the crossover parameter argument"""
    if re.match("adj", string, re.IGNORECASE):
        return None
    elif string.replace('.', '', 1).isdigit():
        return float(string)
    else:
        raise TypeError(f"Crossover parameter {string} is invalid")


class GeneType(Enum):
    Continuous = 0
    Discrete = 1

str_to_gene_type_map = {
    'real': GeneType.Continuous,
    'continuous': GeneType.Continuous,
    'int': GeneType.Discrete,
    'discrete': GeneType.Discrete
}

def gene_type_arg(gene_str):
    try:
        return str_to_gene_type_map[gene_str]
    except KeyError:
        raise argparse.ArgumentTypeError('--gene-type argument must be one of {0} (received {1})'.format(
            list(str_to_gene_type_map.keys()), gene_str
        ))


class ErrorMetric(Enum):
    ErrorRate = 0
    MRE = 1
    MED = 2
    NMED = 3
    MinError = 4
    MaxError = 5
    ErrorRange = 6
    Variance = 7

str_to_error_metric_map = {
    'errorrate': ErrorMetric.ErrorRate,
    'mre': ErrorMetric.MRE,
    'med': ErrorMetric.MED,
    'mae': ErrorMetric.MED,  # Mean Absolute Error is the same as Mean Error Distance
    'nmed': ErrorMetric.NMED,
    'minerror': ErrorMetric.MinError,
    'maxerror': ErrorMetric.MaxError,
    'errorrange': ErrorMetric.ErrorRange,
    'range': ErrorMetric.ErrorRange,
    'errorvariance': ErrorMetric.Variance,
    'variance': ErrorMetric.Variance,
}

def error_metric_arg(metric_str):
    if metric_str is None:
        return
    try:
        return str_to_error_metric_map[metric_str.replace('_', '').replace('-', '').lower()]
    except KeyError:
        raise argparse.ArgumentTypeError('--error-metric argument must be one of {0} (received {1})'.format(
            list(str_to_error_metric_map.keys()), metric_str
        ))


class HW_Metric(Enum):
    Delay = 0
    Area = 1
    Power = 2

str_to_hw_metric_map = {
    'delay': HW_Metric.Delay,
    'area': HW_Metric.Area,
    'power': HW_Metric.Power
}

def hw_metric_arg(metric_str):
    if metric_str is None:
        return
    try:
        return str_to_hw_metric_map[metric_str.lower()]
    except KeyError:
        raise argparse.ArgumentTypeError('--hw-metric argument must be one of {0} (received {1})'.format(
            list(str_to_hw_metric_map.keys()), metric_str
        ))

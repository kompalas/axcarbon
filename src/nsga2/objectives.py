"""Objective functions for the genetic algorithm"""
from copy import deepcopy
from time import time
import re
import random
import logging
import ctypes
import os.path
from src import project_dir
from src import MAX_ERROR, MAX_DELAY, MAX_STDEV
from src.utils import check_cancel_gates
from src.nsga2.utils import ErrorMetric, HW_Metric

__all__ = [
    'calc_error_ctypes', 'calc_delay',
    'apply_approximations', 'translate_chromosome',
    'calc_fitness', 'null_objective_function'
]

logger = logging.getLogger(__name__)


def calc_error_ctypes(chromosome, netlist, shared_location=None):
    """Calculate approximation error of netlist with ctypes"""
    shared_location = shared_location or os.path.join(project_dir, 'circuits', netlist.circuit)
    shared_location += '/' if shared_location[-1] != '/' else ''

    shared_lib = ctypes.CDLL(shared_location + f'_top.so')
    # define the arrays for the approximate values and the error measurements
    IntArray = ctypes.c_int * len(chromosome)
    DoubleArray = ctypes.c_double * 8
    # insert them as arguments to the ctypes function
    arguments = IntArray(*chromosome)
    initial_values = [-1.0] * 8
    error = DoubleArray(*initial_values)
    # call the function to populate error array
    shared_lib.filetest(arguments, error)

    # unpack all error values tracked from the simulation
    num_inputs, error_rate, mre, med, nmed, min_error, max_error, error_var = error
    return {ErrorMetric.ErrorRate: error_rate,
            ErrorMetric.MRE: mre,
            ErrorMetric.MED: med,
            ErrorMetric.NMED: nmed,
            ErrorMetric.MinError: min_error,
            ErrorMetric.MaxError: max_error,
            ErrorMetric.ErrorRange: error_var}


def calc_delay(graph):
    graph.topol_ord()
    graph.critical_path()
    return graph.cpd


def calc_area(exact_graph, ax_graph):
    """Estimate the area of the DAG by the number of connected nodes 
    compared to the fully-connected graph
    """
    connected_nodes = ax_graph.find_connected_nodes()
    return len(connected_nodes) / len(exact_graph.nodes)


def apply_approximations(chromosome, candidates, cancel_dict, graph, variables_range):
    """Apply the approximations of a chromosome to the graph"""
    # subs must be tuples of replaced (net), replacement (constant or net)
    subs = translate_chromosome(chromosome, candidates, variables_range)

    # logger.debug(f"Chromosome: {chromosome} has:")
    # logger.debug(f"Subs: {subs}")

    for replaced, replacement in subs:
        already_replaced = graph.replace(replaced, replacement)
        check_cancel_gates(graph, cancel_dict, already_replaced)

    while len(graph.isolated_nodes) > 0:
        node_name, constant_pin, constant_output = random.sample(graph.isolated_nodes, k=1)[0]

        # if the constant output pin is not included in the netlist, isolating the node has no effect on the
        # graph. So simply remove it from the isolated nodes set without approximating its output wire
        if constant_pin in graph.get_node[node_name].output_pins:
            already_replaced = graph.replace(
                net=graph.get_node[node_name].io['output_wires'][constant_pin],
                replacement=constant_output
            )
            # subs += [(graph.get_node[node_name].io['output_wires'][constant_pin], constant_output)]
            check_cancel_gates(graph, cancel_dict, already_replaced)

        graph.isolated_nodes.remove((node_name, constant_pin, constant_output))

    return subs


def translate_chromosome(chromosome, candidates, variables_range):
    """Get approximations that correspond to selected genes in the chromosome"""
    return [(candidates[i], gene) for i, gene in enumerate(chromosome) if gene != variables_range[i][-1]]


def calc_fitness(chromosome, candidates, variables_range, cancel_dict, netlist, graph,
                 error_metric=None, hw_metric=None, **kwargs):
    """Single objective function to return all objective values:
        Accuracy, nominal delay and standard deviation of critical path"""

    # make sure that there are some approximations
    # NOTE: Use the last entry in 'variables_range' as indication that no approximation is needed for that gene
    if 'sanity_test' not in kwargs:
        if all(chromosome[gene] == variables_range[gene][-1] for gene in range(len(chromosome))):
            return MAX_ERROR, MAX_DELAY

    # apply approximations to the graph
    ng = deepcopy(graph)
    subs = apply_approximations(chromosome, candidates, cancel_dict, ng, variables_range)

    # calculate error metric
    error = MAX_ERROR
    if error_metric is not None:
        errors = calc_error_ctypes(
            chromosome=chromosome, netlist=netlist,
            shared_location=re.search("(.*)/[^/]*$", kwargs['write_cfile_to']).group(1)
            if 'write_cfile_to' in kwargs else None,
        )
        error = errors.get(error_metric)

    # TODO: Find a better way to constrain the error, this only works with a baseline file that contains min/max values
    # # mandatory constraint: if error exceeds the maximum error, return worst fitness
    # if 'baseline_data' in kwargs and error > kwargs['baseline_data']['Error']['max']:
    #     return MAX_ERROR, MAX_DELAY, MAX_STDEV

    # # apply threshold on error: if violated, return worst values for all metrics
    # if 'constrained' in kwargs and 'baseline_data' in kwargs:
    #     if error > kwargs['baseline_data']['Error']['max'] / kwargs['constrained']:
    #         return MAX_ERROR, MAX_DELAY, MAX_STDEV

    # calculate hardware metric
    hw_value = MAX_DELAY
    if hw_metric is not None:
        if hw_metric == HW_Metric.Delay:
            hw_value = calc_delay(ng)
        elif hw_metric == HW_Metric.Area:
            hw_value = calc_area(graph, ng)
        elif hw_metric == HW_Metric.Power:
            raise NotImplementedError("Power calculation is not implemented yet.")

    if 'write_verilog_to' in kwargs:
        netlist.build_vfile(
            approximations=subs,
            write_to=kwargs['write_verilog_to'] if 'write_verilog_to' in kwargs else None
        )
    return error, hw_value


def null_objective_function(*args, **kwargs):
    return


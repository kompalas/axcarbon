"""Objective functions for the genetic algorithm"""
from copy import deepcopy
from time import time
import re
import random
import logging
import ctypes
import os.path
import numpy as np
from src import project_dir
from src import MAX_ERROR, MAX_DELAY, MAX_STDEV
from src.utils import check_cancel_gates
from src.nsga2.utils import ErrorMetric, HW_Metric
from src.evaluation.errors import calculate_error_metrics_from_arrays

__all__ = [
    'calc_error_ctypes', 'calc_delay',
    'apply_approximations', 'translate_chromosome',
    'calc_fitness', 'null_objective_function'
]

logger = logging.getLogger(__name__)


def calc_error_ctypes(chromosome, netlist, shared_location=None, use_binary_inputs=False):
    """Calculate approximation error of netlist with ctypes"""
    shared_location = shared_location or os.path.join(project_dir, 'circuits', netlist.circuit)
    shared_location += '/' if shared_location[-1] != '/' else ''

    shared_lib = ctypes.CDLL(shared_location + f'_top.so')
    # define the arrays for the approximate values and the error measurements
    ChromArray = ctypes.c_int * len(chromosome)
    arguments = ChromArray(*chromosome)

    if use_binary_inputs:
        MAX_LINES = 100000
        MAX_LEN = max(netlist.netlist_data['bits_per_unique_output'].values())

        # Create numpy arrays to store the results
        result_storage = np.zeros((MAX_LINES, MAX_LEN), dtype=np.int32)
        true_output_storage = np.zeros((MAX_LINES, MAX_LEN), dtype=np.int32)
        # Convert the numpy array to a ctypes pointer
        result_storage_ctypes = result_storage.ctypes.data_as(ctypes.POINTER((ctypes.c_int * MAX_LEN)))
        true_output_storage_ctypes = true_output_storage.ctypes.data_as(ctypes.POINTER((ctypes.c_int * MAX_LEN)))

        # Now call the C function
        shared_lib.binary_filetest(arguments, result_storage_ctypes, true_output_storage_ctypes)

        # Calculate error metrics
        convert_to = 'decimal'
        if netlist.netlist_data['floating_point']['is_fp']:
            convert_to = netlist.netlist_data['floating_point']['format']
        errors = calculate_error_metrics_from_arrays(true_output_storage, result_storage,
                                                     output_bitwidth=MAX_LEN,
                                                     convert_to=convert_to,
                                                     as_dict=False)
        num_inputs, error_rate, mre, med, nmed, min_error, max_error, range, variance = errors

    else:
        ErrorArray = ctypes.c_double * (1 + len(ErrorMetric))
        # insert them as arguments to the ctypes function
        initial_values = [-1.0] * (1 + len(ErrorMetric))
        error = ErrorArray(*initial_values)
        # call the function to populate error array
        shared_lib.filetest(arguments, error)

        # unpack all error values tracked from the simulation
        num_inputs, error_rate, mre, med, nmed, min_error, max_error, range, variance = error

    return {ErrorMetric.ErrorRate: error_rate,
            ErrorMetric.MRE: mre,
            ErrorMetric.MED: med,
            ErrorMetric.NMED: nmed,
            ErrorMetric.MinError: min_error,
            ErrorMetric.MaxError: max_error,
            ErrorMetric.ErrorRange: range,
            ErrorMetric.Variance: variance}


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
                 error_metric=None, hw_metric=None, error_constraint=None, hw_constraint=None, **kwargs):
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
            use_binary_inputs=kwargs.get('use_binary_inputs', False)
        )
        error = errors.get(error_metric)

    # calculate hardware metric
    hw_value = MAX_DELAY
    if hw_metric is not None:
        if hw_metric == HW_Metric.Delay:
            hw_value = calc_delay(ng)
        elif hw_metric == HW_Metric.Area:
            hw_value = calc_area(graph, ng)
        elif hw_metric == HW_Metric.Power:
            raise NotImplementedError("Power calculation is not implemented yet.")

    # apply threshold on error and HW value: if violated, return worst values for all metrics
    if (error_constraint is not None and error > error_constraint) or (hw_constraint is not None and hw_value > hw_constraint):
        return MAX_ERROR, MAX_DELAY

    if 'write_verilog_to' in kwargs:
        netlist.build_vfile(
            approximations=subs,
            write_to=kwargs['write_verilog_to'] if 'write_verilog_to' in kwargs else None
        )
    return error, hw_value


def null_objective_function(*args, **kwargs):
    return


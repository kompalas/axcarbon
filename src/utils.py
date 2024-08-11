"""Utility functions"""
import logging
import logging.config
import pickle
import re
import math
import ctypes
import itertools
import functools
import os
import shutil
import sys
import subprocess
import warnings
import time
import numpy as np
import pandas as pd
import argparse
from copy import deepcopy
from datetime import datetime
from glob import glob
from textwrap import wrap
from natsort import natsorted
from multiprocessing import cpu_count
from src import project_dir, ALL_CIRCUITS
from src.wire import Wire
from src.edge import Edge
from src.gate import Gate
from src.node import Node
from src.nsga2.utils import ga_args, validate_ga_args, get_candidates


__all__ = [
    'app_args', 'env_cfg', 'logging_cfg',
    'get_gates_dict', 'get_cancel_dict', 'check_cancel_gates',
    'translate_netlist_to_gates_and_wires',
    'gate_to_node', 'gates_to_nodes',
    'wires_to_edges',
    'get_size', 'clear_directory',
    'create_shared_cfile', 'build_c_netlist_text_main_structure', 'build_c_netlist_text',
    'signed_io_verilog',
    'get_overrides', 'get_cp_net_indices',
    'forward'
]

logger = logging.getLogger(__name__)


def app_args(parser):
    """Arguments for running the main application"""
    parser.add_argument("--circuit", "-c", choices=ALL_CIRCUITS, required=True,
                        help=f"Select circuit. Possible options: {'|'.join(ALL_CIRCUITS)}")
    parser.add_argument("--libfile", "-lf",
                        default='nangate45',
                        help="Select verilog library for standard cells. Default: 'nangate45'")
    parser.add_argument('--name', '-n', help='Experiment name')
    parser.add_argument('--verbose', '-v', action='store_true', help='Emit debug log messages')
 
    op_mode = parser.add_argument_group('Mode of Operation arguments')
    op_mode.add_argument('--ga', action='store_true', help='Run a Genetic Algorithm')
    op_mode.add_argument('--prepare-mult', action='store_true', dest='prepare_mult_mode',
                         help='Get the truth table of a given multiplier')
    return parser


def env_cfg():
    """Configure the environment to run the genetic algorithm"""
    parser = argparse.ArgumentParser("Netlist & DAG Handling for RTL")
    parser = app_args(parser)
    parser = ga_args(parser)

    # parse arguments and check for errors
    args = parser.parse_args()
    if args.ga:
        validate_ga_args(args)

    # configure logging 
    logging_cfg(args)

    # fix deepcopy recursion problem by increasing the limit, if necessary
    if sys.getrecursionlimit() < 10000:
        sys.setrecursionlimit(10000)

    return args


def logging_cfg(args):
    """Configure logging for entire framework"""
    if not os.path.exists(os.path.join(project_dir, 'logs')):
        os.makedirs(os.path.join(project_dir, 'logs'))

    # set the name of the log file and directory
    timestr = time.strftime("%Y.%m.%d-%H:%M:%S")
    exp_full_name = timestr if args.name is None else args.name + '___' + timestr
    logdir = os.path.join(project_dir, 'logs', exp_full_name)
    if not os.path.exists(logdir):
        os.makedirs(logdir)

    # use the logging config file
    log_filename = os.path.join(logdir, exp_full_name + '.log')
    logging.config.fileConfig(
        os.path.join(project_dir, 'logging.conf'),
        disable_existing_loggers=False,
        defaults={
            'main_log_filename': f'{project_dir}/logs/{args.circuit}_out.log',
            'all_log_filename': log_filename,
        }
    )
    for logname in ('src.netlist', 'src.graph'):
        level = logging.DEBUG if args.verbose else logging.INFO
        logging.getLogger(logname).setLevel(level)

    # initialized logger and first messages
    logging.getLogger().logdir = logdir
    logger.log_filename = log_filename
    logger.info('Log file for this run: ' + os.path.realpath(log_filename))
    logger.debug("Command line: {}".format(" ".join(sys.argv)))
    arguments = {argument: getattr(args, argument) for argument in dir(args)
                 if not callable(getattr(args, argument)) and not argument.startswith('__')}
    logger.debug(f"Arguments: {arguments}")

    # Create a symbollic link to the last log file created (for easier access)
    try:
        os.unlink("latest_log_file")
    except FileNotFoundError:
        pass
    try:
        os.unlink("latest_log_dir")
    except FileNotFoundError:
        pass
    try:
        os.symlink(logdir, "latest_log_dir")
        os.symlink(log_filename, "latest_log_file")
    except OSError:
        logger.debug("Failed to create symlinks to latest logs")



def get_gates_dict(libfile='nangate45.v', new_dict=False):
    """
    Get a dictionary with the io of every cell in the libfile library
    :param libfile: the name of the library file
    :param new_dict: boolean. Whether to create new pickle file with the final dictionary
    :return: dictionary in the form {cell_type: (list of input pins of the cell,
                                                 list of output pins of the cell)}
    """
    dictfile = libfile.replace('.v','') + '_gatesdict.pkl'
    dictfile = os.path.join(project_dir, 'libs', dictfile)
    if new_dict or not os.path.exists(dictfile):
        try:
            with open(project_dir + '/libs/' + libfile, "r") as f:
                data = f.read()
            logger.debug(f"Reading libfile {libfile}")
        except FileNotFoundError as e:
            logger.error(f"Invalid libfile {libfile}")
            raise e

        # split library into modules and primitives
        data_split = re.split(r"\bmodule\b|\bprimitive\b", data)[1:]
        data_split = [x[:re.search(r"(endmodule)|(endprimitive)", x).end()] for x in data_split]

        # find gate names and inputs, outputs
        gate_names = [re.search(r"(.*?)\s*?\(", line.strip()).group(1) for line in data_split]
        gate_io = [(
            re.findall(r"input\s+(.*);", line),
            re.findall(r"output\s+(.*);", line),
            ) for line in data_split]

        # clear io names to save
        gate_io_split = []
        for inputs, outputs in gate_io:
            if len(inputs) == 1:
                all_inputs = inputs[0].split(',')
                all_inputs = [inp_wire.strip() for inp_wire in all_inputs]
            else:
                all_inputs = inputs
            if len(outputs) == 1:
                all_outputs = outputs[0].split(',')
                all_outputs = [outp_wire.strip() for outp_wire in all_outputs]
            else:
                all_outputs = outputs
            gate_io_split.append((all_inputs, all_outputs))

        # combine information and save to file
        gates = dict(zip(gate_names, gate_io_split))
        logger.debug(f"Gates dictionary: {gates}")

        with open(dictfile, "wb") as f:
            pickle.dump(gates, f)
        return gates

    try:
        with open(dictfile, "rb") as f:
            gates = pickle.load(f)
        logger.debug(f"Reading dictfile {libfile}")
    except FileNotFoundError as e:
        logger.error(f"Invalid libfile {libfile}")
        raise e

    logger.debug(f"Gates dictionary: {gates}")
    return gates


def get_cancel_dict(gates_dict):
    """Get a dictionary to look up the values of input pins at which the output
    of a gate is predetermined, independently of any other inputs"""

    efforts = 0
    while True:
        try:
            # NOTE: this does not work in Windows due to library dependencies
            efforts += 1
            _lib = ctypes.CDLL(os.path.join(project_dir, 'libs', '_library.so'))
            break
        except OSError:
            if efforts > 5:
                raise
            # try recreating the shared library for a limited amount of retries
            cmd = f"{project_dir}/src/bash/get_shared_clib.sh {project_dir}/libs/library.c"
            subprocess.run(cmd, shell=True, check=True)

    # the dictionary to return
    gate_keep = {}
    # iterate over each gate type and their inputs/outputs
    for gate, gate_io in gates_dict.items():

        # set the type c_int() for output pins
        out_dict = {io_x: ctypes.c_int() for io_x in gate_io[1]}
        # get a truth table (0 or 1) for all input pins
        truth_table_inp = itertools.product(
            [ctypes.c_int(0), ctypes.c_int(1)], repeat=len(gate_io[0])
        )
        # output truth table
        truth_table = np.empty(
            (
                2**len(gate_io[0]), len(gate_io[0]) + len(gate_io[1])
            ),
            dtype=int
        )

        # extract truth table
        try:
            for i, comp in enumerate(truth_table_inp):
                # call gate function: use the combination of inputs from the 
                # truth table and call output values by reference (pointers)
                _lib[gate](*comp, *map(ctypes.byref, out_dict.values()))
                # fill output truth table with inputs...
                truth_table[i, :len(gate_io[0])] = list(map(lambda x: x.value, comp))
                # ...and output value from the called function
                truth_table[i, len(gate_io[0]):] = list(map(lambda x: x.value, out_dict.values()))
        except AttributeError:
            continue

        # analyze the completed truth table to see which inputs lead to constant output
        keep = []
        seen = []
        # repeat for every output
        for outp in gate_io[1]:
            o_index = len(gate_io[0]) + gate_io[1].index(outp)

            # find all possible combinations between inputs, from one to all
            for r in range(1, len(gate_io[0])):
                for comb in itertools.combinations(gate_io[0], r):

                    column_indices = [gate_io[0].index(i) for i in comb]
                    unique_comb = np.unique(truth_table[:, column_indices], axis=0)
    
                    # check if every value of the combination corresponds to constant output
                    for value in unique_comb:
                        if len(seen) > 0:
                            # check if there is an element already seen that can
                            # encapsulate this combination
                            n = list(zip(comb,value))
                            # if exists, continue to next combination
                            if any(all(x in n for x in el) for el in seen):
                                continue

                        rows = np.where(
                            np.all(truth_table[:, column_indices] == value, axis=1)
                        )[0]
    
                        if np.min(truth_table[rows, o_index]) == np.max(truth_table[rows, o_index]):

                            # save combination and corresponding output
                            keep.append([
                                outp,  # output pin that is constant
                                truth_table[rows, o_index][0],  # constant output value
                                list(comb),  # combination of input pins
                                list(value)  # values of the above combination
                            ])
                            seen.append(list(zip(comb, value)))

        gate_keep[gate] = keep

    logger.debug(f"Cancel gates dict: {gate_keep}")
    return gate_keep


def check_cancel_gates(graph, cancel_dict, already_approxed_edges):
    """Check if a gate has constant inputs that predetermine its ouput independently
    of other variable inputs. Given the conditions for every library gate to be 
    cancelled, remove nodes to a gate that will have constant output."""

    f = lambda e: [
        graph.get_node[e.destination].type,
        [e.destination_pin],
        # replacement value of the edge
        [
            replacement 
            for edge_replaced, new_edge, replacement in graph.replaced_edges
            if edge_replaced.net == e.net
        ]
    ]
    fr = lambda i, j: [
        i[0], sorted(list(i[1]) + list(j[1])), [i[2][0]] + [j[2][0]]
    ]

    # take all approximated edges to specific node
    for edges_to_node in already_approxed_edges:
        if not edges_to_node:
            continue
        curr_node = edges_to_node[0].destination

        # get information about replaced edges
        repl_info = [f(e) for e in edges_to_node]
        repl_info = [x[:-1] + [x[-1][0]] for x in repl_info if x[-1] != []]
        if not repl_info:
            continue
        # refactor replacement info so that int values are used
        repl_info = [x[:-1] + [[int(x[-1][0])]] for x in repl_info]
        # form of info that matches cancel_dict
        t = functools.reduce(fr, repl_info)

        # check if cancelling has happened
        if t[1:] in [x[2:] for x in cancel_dict[t[0]]]:
            # get the constant output value of the cancelled gate
            const_output = next(iter(
                (output_pin, output_value)
                for output_pin, output_value, input_pin_combination, input_pin_values in cancel_dict[t[0]]
                if [input_pin_combination, input_pin_values] == t[1:]
            ))
            # isolated node by removing all its input connections
            graph.isolate_node(curr_node, const_output[0], const_output[1])


def translate_netlist_to_gates_and_wires(netlist):
    """
    Translate the extracted info from the Verilog netlist to gates (nodes) and wires (edges)
    -----------
    netlist: the netlist object
    -----------
    return: two lists: one with Gate instances, and another with Wire instances
    """
    # create wire instances from all inputs, wires and outputs of the netlist
    wires = {}
    for wire in netlist.netlist_data['inputs'] + \
                netlist.netlist_data['wires'] + \
                netlist.netlist_data['outputs']:
        wires[wire] = Wire(name=wire)

    # to extract pin and gate name from port (e.g., .<PIN_NAME>(<WIRE_NAME>) )
    io_regex = re.compile(r'([A-Z\d]+?)\((.*)\)')

    # iterate over all gates
    gates = []
    for gtype, name, *info in iter(netlist.netlist_data['gates']):

        num_of_inputs = len([
            inp_pin for inp_pin in netlist.gate_dict[gtype][0] 
            if re.search(f"{inp_pin}\(.*\)", ' '.join(info))
        ])
        num_of_outputs = len([
            out_pin for out_pin in netlist.gate_dict[gtype][1]
            if re.search(f"{out_pin}\(.*\)", ' '.join(info))
        ])
        assert num_of_inputs + num_of_outputs == len(info), f'{gtype} {name} {info} {num_of_inputs} {num_of_outputs}'
        inputs, input_pins = [], []
        outputs, output_pins = [], []

        # get gate outputs
        for i in range(num_of_inputs, num_of_inputs + num_of_outputs):
            output_pin, output_wire = re.findall(io_regex, info[i])[0]  # findall returns a list
            outputs.append(output_wire)
            output_pins.append(output_pin)
            # add origin to the specific output wire (output pin for gate == origin pin for wire)
            try:
                wires[output_wire].add_origin(origin_gate=name, origin_gate_pin=output_pin)
            except KeyError:
                logger.warning(f'Gate {name}: output pin {output_pin} does not correspond to a wire.')

        # get gate inputs
        for i in range(num_of_inputs):
            input_pin, input_wire = re.findall(io_regex, info[i])[0]
            inputs.append(input_wire)
            input_pins.append(input_pin)
            # add destination info to the specific input wire
            # (input pin for gate == destination pin for wire)
            try:
                wires[input_wire].add_destination(gate_name=name, gate_pin=input_pin)
            except KeyError:
                logger.warning(f'Gate {name}: input pin {input_pin} does not correspond to a wire.')

        # create gate instance
        gate_obj = Gate(
            name=name, gtype=gtype,
            inputs=inputs, input_pins=input_pins,
            outputs=outputs, output_pins=output_pins
            )
        gates.append(gate_obj)


    # re-wire wires that may have been assigned to another wire (wire-by-wire replacement)
    for wire in wires.values():
        if wire.name not in netlist.netlist_data['inputs'] and wire.origin == '':

            if wire.name in netlist.netlist_data['replaced'] and \
                "1'b" not in netlist.netlist_data['replaced'][wire.name]:  # replacement was found
                wire_replacement = netlist.netlist_data['replaced'][wire.name]

                # change wire information to replacement
                # TODO: Should this be commented out?
                # wires[wire.name] = wires[wire_replacement]
                # wires[wire.name].name = wire.name

                # find gates whose input wire was replaced
                gates_without_input = [gate for gate in gates if wire.name in gate.input_wires]
                # use the replacement wire on those gates
                for gate in gates_without_input:
                    which_wires_idx = [wire_idx for wire_idx, input_wire 
                                       in enumerate(gate.input_wires)
                                       if input_wire == wire.name]
                    for wire_idx in which_wires_idx:
                        gate.input_wires[wire_idx] = wire_replacement

    assert len(wires) == len(
        netlist.netlist_data['wires'] +
        netlist.netlist_data['inputs'] +
        netlist.netlist_data['outputs']
        ), \
        f"""Wires mismatch: {len(netlist.netlist_data['wires'] +
            netlist.netlist_data['inputs'] + netlist.netlist_data['outputs'])}\
            parsed from Verilog but {len(wires)} appear"""
    return gates, list(wires.values())


def assign_wire_activity(wires, saif_report):
    """Populate a list of wires with their activity characteristics"""
    unit = re.search(r"TIMESCALE\s+(\d+) (\w+)\)", saif_report).group(1)
    timescale = re.search(r"TIMESCALE\s+(\d+) (\w+)\)", saif_report).group(2)
    duration = re.search(r"DURATION\s+([\d.]+)\)", saif_report).group(1)

    regex = re.compile(r"""
\s+?\((?P<net_name>[^\s]+)\s*
\s+?\(T0 (?P<t0>[\d.]+)\) \(T1 (?P<t1>[\d.]+)\) \(TX (?P<tx>[\d.]+)\)\s*
\s+? \(TC (?P<tc>[\d.]+)\) \(TG (?P<tg>[\d.]+)\) \(IG (?P<ig>[\d.]+)\)\s*
\s+?\)""")
    assert regex.search(saif_report), "Could not read the SAIF file. Check the regular expression"

    wires_dict = {wire.name: wire for wire in wires}
    for net_name, t0, t1, tx, tc, tg, ig in regex.findall(saif_report):
        wire_name = net_name.replace("\\", ""),
        wires_dict[wire_name].set_activity(
            t0=int(unit) * float(t0) / float(duration),
            t1=int(unit) * float(t1) / float(duration),
            tx=int(unit) * float(tx) / float(duration),
            tc=int(unit) * float(tc) / float(duration),
            tg=int(unit) * float(tg) / float(duration),
            ig=int(unit) * float(ig) / float(duration)
        )

def gate_to_node(gate):
    """Transform netlist gate to graph node"""
    return Node(gate.name, gate.type,
                gate.input_wires, gate.input_pins,
                gate.output_wires, gate.output_pins)


def gates_to_nodes(gates):
    """Wrapper function for 'gate_to_node' on multiple gates"""
    return [gate_to_node(gate) for gate in gates]


def wires_to_edges(wires):
    """Transform netlist wires to graph edges"""
    edges = []
    for wire in wires:
        # this is for output edges
        if len(wire.destinations) == 0:
            edges.append(
                Edge(wire.name, wire.origin, wire.origin_pin, activity=wire.activity)
            )
            continue
        # this works for all other edges except output edges
        for destination, destination_pin in zip(wire.destinations, wire.destination_pins):
            edges.append(
                Edge(wire.name, wire.origin, wire.origin_pin, destination, destination_pin,
                     activity=wire.activity)
            )
    return edges


def get_size(directory):
    """Get the size of a directory"""
    # check if it exists
    assert os.path.isdir(directory), f"Directory {directory} doesn't exist."

    # use linux 'du' command to get the directory size in bytes
    cmd = f"du -s {directory}"
    if sys.version_info.minor == 8:
        p = subprocess.run(cmd, shell=True, check=True, text=True, capture_output=True)
    elif sys.version_info.minor == 6:
        p = subprocess.run(cmd, shell=True, check=True, stdout=subprocess.PIPE, universal_newlines=True)

    size = re.search(r"(^\d+).*", p.stdout).group(1)
    return int(size)


def clear_directory(directory, pattern='*'):
    """Clear a given directory of files matching a pattern (default is all files)"""
    contains = glob(f"{directory}/{pattern}")
    for file_or_dir in contains:
        if os.path.isdir(file_or_dir):
            os.rmdir(file_or_dir)
        elif os.path.isfile(file_or_dir):
            os.remove(file_or_dir)


def create_shared_cfile(circuit, written_in=None):

    cmd = f"{project_dir}/src/bash/get_shared_clib.sh {project_dir}/libs/library.c"
    subprocess.run(cmd, shell=True, check=True)
    _lib = ctypes.CDLL(os.path.join(project_dir, 'libs', '_library.so'), mode=ctypes.RTLD_GLOBAL)

    cfile = written_in or os.path.join(project_dir, 'circuits', circuit, 'top.c')
    cmd = f"{project_dir}/src/bash/get_shared_clib.sh {cfile}"
    logger.debug(f"Command to create shared library:\n{cmd}")
    subprocess.run(cmd, shell=True, check=True)
    # cdll_shared_lib = ctypes.CDLL(f"{project_dir}/circuits/{circuit}/_top_{circuit}.so", mode=ctypes.RTLD_GLOBAL)
    #
    # return cdll_shared_lib


def build_c_netlist_text_main_structure(netlist, graph):
    """Build main part of C-netlist file, based on the graph topological ordering"""
    netl_c = ''
    null_counter = 0

    ## TODO: Find a way to make this dict reflect the already replaced edges from the
    ##       input netlist.
    replaced = {
        (edge.net, replacement) for edge, _, replacement in graph.replaced_edges
    }

    # iterate over all nodes
    for node in [graph.get_node[node_name] for node_name in graph.top_sort]:

        # get wires that drive the input pins of the node
        inp_nets = [
            [
                edge.net for edge in graph.get_edges['->' + node.name]
                if edge.destination_pin == pin
            ][0]
            for pin in node.input_pins
        ]

        outp_nets = []
        # get the wires driven by the output pins of the node, if exist
        for pin in netlist.gate_dict[node.type][1]:
            # this returns if node has not been approximated
            outnets = [
                edge.net for edge in graph.get_edges[node.name + '->']
                if edge.origin_pin == pin
            ]
            # this includes the replaced wires of the node's output
            outnets += [
                edge.net for edge, *_ in graph.replaced_edges
                if edge.origin == node.name and edge.origin_pin == pin
            ]
            # if no wires were found, this means the node has an output pin
            # which is not used in this netlist. Replace with null pointer
            if not outnets:
                outp_nets.append('&null' + str(null_counter))
                null_counter += 1
            else:
                outp_nets.append(
                    '&' + outnets[0]
                    # if the wire is part of a bus output wire
                    if not (outnets[0] in netlist.netlist_data['outputs'] and
                            outnets[0] in netlist.netlist_data['unique_outputs'])
                    # if the output wire is not a bus, single output wire
                    else f'&{outnets[0]}[0]'
                )

        # keep only the output wires not declared so far and are not circuit outputs
        undec_outp_nets = {
            outp_net for outp_net in outp_nets
            # if the wire has not been declared above
            if 'int ' + outp_net.replace('&', '') + ';' not in netl_c and
            # and if the wire is not an output bus wire
            outp_net.replace('&', '') not in netlist.netlist_data['outputs'] and
            # abd if the wire is not an output non-bus wire
            outp_net.replace('&', '').replace('[0]', '') not in netlist.netlist_data['outputs']
        }
        # declare the output wires
        for outp_net in undec_outp_nets:
            netl_c += '\n\tint ' + outp_net.replace('&', '') + ';'

        # write call to node-equivalent function
        netl_c += '\n\t' + node.type + "( " + ', '.join(inp_nets + outp_nets) + ');'

        # this is a work-around for a single output of a single wire (non-bus output), so that even a single output
        # wire gets assigned its correct index in the ax_values array of the chromosome
        outp_net_ids = {
            outp_net:
            netlist.net_id[outp_net.replace("&", "")]
            if outp_net.replace('&', '').replace('[0]', '') not in netlist.netlist_data["outputs"]
            else netlist.net_id[outp_net.replace('&', '').replace('[0]', '')]
            for outp_net in outp_nets
            if 'null' not in outp_net and
            (outp_net.replace('&', '') in netlist.net_id or
             outp_net.replace('&', '').replace('[0]', '') in netlist.net_id)
        }

        # write function call to approximate the value of the outputs of the node by their corresponding position
        # in the ax values array
        for outp_net in outp_nets:
            if 'null' not in outp_net and outp_net in outp_net_ids:
                netl_c += f'\n\t{outp_net.replace("&", "")} = assign_value_to_net(' \
                          f'ax_values, {outp_net_ids[outp_net]}, {outp_net.replace("&", "")}' \
                          f');'

        # write replacement assignment for node outputs, right by the side of the call
        netl_c += ''.join([
            ' ' + net_replaced + ' = ' + value_replacement + ';'
            for net_replaced, value_replacement in replaced
            if f'&{net_replaced}' in undec_outp_nets
        ])

    # write replacement assignment for circuit outputs at the end
    netl_c += ''.join([
        '\n\t' + net + ' = ' + rpl + ';'
        for net, rpl in replaced if net in netlist.netlist_data['outputs']
    ])
    return netl_c


def build_c_netlist_text(netlist, main_netlist_structure):
    """Create the text structure outline of the C-netlist file"""
    unique_io = netlist.netlist_data['unique_inputs'] + netlist.netlist_data['unique_outputs']
    io_pointers = ', '.join(natsorted('int* ' + io for io in unique_io))
    insize = max(netlist.netlist_data['bits_per_unique_input'].values())
    outsize = max(netlist.netlist_data['bits_per_unique_output'].values())

    # this is only used for debugging, not really import to automate
    chromosome_length = len(netlist.netlist_data['wires'] + netlist.netlist_data['outputs'] + netlist.netlist_data['inputs'])

    signed_inputs = netlist.netlist_data['signed_inputs']
    signed_outputs = netlist.netlist_data['signed_outputs']

    # configure output integer type based on maximum bitwidth of output
    if outsize < 32:
        outp_uint_type = 'int' if signed_outputs else 'unsigned int'
        outp_u_format = 'd' if signed_outputs else 'u'
    elif 32 <= outsize < 64:
        outp_uint_type = 'long int' if signed_outputs else 'unsigned long int'
        outp_u_format = 'ld' if signed_outputs else 'lu'
    elif outsize >= 64:
        outp_uint_type = 'long long int' if signed_outputs else 'unsigned long long int'
        outp_u_format = 'lld' if signed_outputs else 'llu'

    # configure input integer type based on maximum bitwidth of input
    if insize < 32:
        inp_uint_type = 'int' if signed_inputs else 'unsigned int'
        inp_u_format = 'd' if signed_inputs else 'u'
    elif 32 <= insize < 64:
        inp_uint_type = 'long int' if signed_inputs else 'unsigned long int'
        inp_u_format = 'ld' if signed_inputs else 'lu'
    elif insize >= 64:
        inp_uint_type = 'long long int' if signed_inputs else 'unsigned long long int'
        inp_u_format = 'lld' if signed_inputs else 'llu'

    inp_uints = ', '.join(f'{inp_uint_type} {io}' for io in netlist.netlist_data['unique_inputs'])
    io_bins = ', '.join(natsorted(io + '_bin' for io in unique_io))
    outp_bin = next(iter(netlist.netlist_data['unique_outputs'])) + '_bin'  # single output is expected

    # check if inputs are signed integers
    signed_inputs_value = 1 if netlist.netlist_data['signed_inputs'] else 0
    signed_outputs_value = 1 if netlist.netlist_data['signed_outputs'] else 0

    # for secondary function: decimal inputs to binary
    dec2bin_and_call = ''
    for inp in netlist.netlist_data['unique_inputs']:
        dec2bin_and_call += f'\tint {inp}_bin[size];\n\tdecimaltobinary({inp}, {inp}_bin, signed_inputs);\n'
    # and binary output to go into main function
    dec2bin_and_call += f'\tint {outp_bin}[outsize];'

    # text going into fscanf: first the format and then the inputs as pointers
    fscanf_1 = '"' + r'\t'.join([
        f'%{inp_u_format}' for _ in range(len(netlist.netlist_data['unique_inputs']))
    ]) + rf'\t%{outp_u_format}"'
    fscanf_2 = ', '.join('&' + inp for inp in netlist.netlist_data['unique_inputs'])

    data = f"""#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <time.h>
#include <math.h>
#include "library.h"
#define MAX_LENGTH 100
#define size {insize}
#define outsize {outsize}


int assign_value_to_net(int *ax_values, int index, int value){{
    if (ax_values[index] == -1) {{
        return value;
    }}
    else {{
        return ax_values[index];
    }}
}}

void {netlist.circuit}_top (int *ax_values, {io_pointers}) {{

{main_netlist_structure}

}}

void decimaltobinary({inp_uint_type} n, int* binary, int signed_inputs){{
    int d;
    int c;

    {inp_uint_type} temp;
    if (n > 0) {{temp = n;}} else {{temp = -n;}}

    for (c = 0 ; c < size ; c++){{
        d = temp >> c;
        if (d & 1){{
            binary[c] = 1;
        }}
        else {{
            binary[c] = 0;
        }}
    }}

    if (n < 0) {{
        binary[size-1] = 1;
        int first_one = 0;
        for (c = 0; c < size-1; c++) {{

            if ((binary[c] == 1) && (first_one == 0)) {{
                first_one = 1;
                continue;
            }}
            if (first_one == 1) {{
                binary[c] = 1 - binary[c];
            }}
        }}
    }}
}}

{outp_uint_type} binarytodecimal(int binary[], int signed_outputs){{
    {outp_uint_type} d;
    {outp_uint_type} result = 0; 
    {outp_uint_type} one = 1;
    int sign = 1;
    int c; 
    int temp[outsize];
    for (c = 0; c < outsize; c++) temp[c] = binary[c];
    
    if ((signed_outputs == 1) && (binary[outsize - 1] == 1)) {{
        sign = -1;
        temp[outsize - 1] = 0;
        int first_one = 0;
        for (c = 0; c < outsize-1; c++) {{
            if ((binary[c] == 1) && (first_one == 0)) {{
                first_one = 1;
                continue;
            }}
            if (first_one == 1) {{
                temp[c] = 1 - binary[c];
            }}
        }}
    }}
    
    for (c = 0 ; c < outsize ; c++){{
       d = one << c; 
       result = result + d*temp[c]; 
    }}
    return sign * result;
}}
void printbinary(int mysize, int binary[]){{
    int c; 
    for ( c = mysize-1 ; c >=0 ; c--){{
       printf("%d",binary[c]);
    }}
    printf("\\n"); 
}}

{outp_uint_type} top_{netlist.circuit}(int *ax_values, {inp_uints}, int signed_inputs, int signed_outputs){{
    //FILE *fb2d = fopen("{project_dir}/circuits/{netlist.circuit}/b2d.txt", "a");
    //if (fb2d == NULL)
    //   exit(1);
    //int c;

{dec2bin_and_call}

    //fprintf(fb2d, "%d ", a_i_0);
    //for (c=0; c<size; c++) fprintf(fb2d, "%d", a_i_0_bin[size-1-c]);
    //fprintf(fb2d, " %d ", a_i_1);
    //for (c=0; c<size; c++) fprintf(fb2d, "%d", a_i_1_bin[size-1-c]);

    {netlist.circuit}_top(ax_values, {io_bins});
    {outp_uint_type} r=binarytodecimal({outp_bin}, signed_outputs);

    //fprintf(fb2d, " %d ", r);
    //for (c=0; c<outsize; c++) fprintf(fb2d, "%d", {outp_bin}[outsize-1-c]);
    //fprintf(fb2d, "\\n");
    //fclose(fb2d);

    return r;
}}

void filetest(int ax_values[], double *error) {{

    char line[MAX_LENGTH];
    {inp_uint_type} {', '.join(netlist.netlist_data['unique_inputs'])};
    {outp_uint_type} y_true, res;
    {outp_uint_type} err=0;
    {outp_uint_type} min_error=pow(2, {outsize - 2}), max_error=0;
    {outp_uint_type} nabs;
    unsigned int i=0;

    double med=0;
    double mre=0;

    double med_max=0;
    med_max = pow(2, {outsize}) - 1;

    int signed_inputs={signed_inputs_value};
    int signed_outputs={signed_outputs_value};

    char file[] = "{project_dir}/circuits/{netlist.circuit}/inputs.txt";
    FILE *f = fopen(file, "r");
    if (f == NULL)
        exit(1);

    //FILE *fax = fopen("{project_dir}/circuits/{netlist.circuit}/ax_values.txt", "w");
    //if (fax == NULL)
    //    exit(1);
    //int j;
    //for (j=0; j<{chromosome_length}; j++) fprintf(fax, "%d %d\\n", j, ax_values[j]);
    //fclose(fax);
    
    //FILE *fo = fopen("{project_dir}/circuits/{netlist.circuit}/outputs.txt", "w");
    //if (fo == NULL)
    //    exit(1);

    while(fscanf(f, {fscanf_1}, {fscanf_2}, &y_true) == {len(netlist.netlist_data['unique_inputs']) + 1}) {{
        i++;
        
        res = top_{netlist.circuit}(ax_values, {', '.join(netlist.netlist_data['unique_inputs'])}, signed_inputs, signed_outputs);
    //    fprintf(fo, {fscanf_1[:-1]}\\n", {', '.join(netlist.netlist_data['unique_inputs'])}, res);
        if(res != y_true) {{
            if (res>y_true) {{
                nabs = res-y_true;
            }} 
            else {{
                nabs = y_true-res;
            }}
            if (nabs < min_error) {{
                min_error = nabs;
            }}
            if (nabs > max_error) {{
                max_error = nabs;
            }}

            err++;
            if(y_true != 0) {{
                mre += (float)nabs/(float)y_true;
            }}
            med += nabs;
        }}
    }}

    // total inputs
    error[0] = (double) i;
    // error rate
    error[1] = (double)err/(double)i;
    // mean relative error
    error[2] = mre/(double)i;
    // mean error distance
    error[3] = med/(double)i;
    // normalized mean error distance
    if(med_max!=0)
        error[4] = med/(double)i/(double)med_max;
    else
        error[4] = 0.0;
    // minimum error
    error[5] = min_error;
    // maximum error
    error[6] = max_error;
    // error variance
    error[7] = max_error - min_error;

    fclose(f);
    //fclose(fo);
}}

void main(int argc, char *argv[]) {{
    printf("Arguments %d\\n", argc);

    int pruned_num = argc - 1;
    int ax_values[pruned_num];
    double error[5];
    int i;
    for (i=0; i<5; i++) error[i]=0.0;

    for (i=1; i<argc; i++) {{
        ax_values[i-1] = atoi(argv[i]);
    }}
    filetest(ax_values, error);
    //for (i=0; i<8; i++) printf("%f\\n", error[i]);
    printf("MED: %f\\n", error[3]);
}}
"""
    return data


def signed_io_verilog(vfile=None):
    """Figure out if a verilog file uses signed inputs and/or outputs"""
    # NOTE: if a single input (output) is signed, all inputs (outputs) are marked as signed
    if vfile is None:
        return False, False

    with open(vfile, "r") as f:
        rtl = f.read()

    return bool(re.search(f"input signed", rtl)), bool(re.search(f"output signed", rtl))


def forward(netlist, chromosome, inputs):
    """Calculate the output of the circuit with given approximation values and
    a specified set of arithmetic inputs"""
    assert len(inputs) == len(netlist.netlist_data['unique_inputs']), \
        f"Mismatch error: Number of inputs given {len(inputs)} does not match "\
        f"expected circuit inputs ({len(netlist.netlist_data['unique_inputs'])})"

    shared_location = os.path.join(project_dir, 'circuits', netlist.circuit)
    shared_lib = ctypes.CDLL(os.path.join(shared_location, '_top.so'))

    # define the array for the approximate values
    IntArray = ctypes.c_int * len(chromosome)
    ax_values = IntArray(*chromosome)
    # define inputs for the output calculation
    IntArray = ctypes.c_int * len(netlist.netlist_data['unique_inputs'])
    inputs = IntArray(*inputs)

    # call the function to get the output of one input sample
    circuit_func = getattr(shared_lib, f'top_{netlist.circuit}')
    result = circuit_func(ax_values, *inputs,
                          ctypes.c_int(int(netlist.netlist_data['signed_inputs'])),
                          ctypes.c_int(int(netlist.netlist_data['signed_outputs'])))

    return result


def get_precision_scaling_data(circuit):
    """Get the results from a Monte-Carlo simulation with a truncated RTL via precision scaling"""
    testdir = os.path.join(project_dir, 'test', 'prec_scaling', circuit.lower())
    csvfile = os.path.join(testdir, 'results', f'{circuit}.csv')
    try:
        all_prec_df = pd.read_csv(csvfile, index_col=False)
    except FileNotFoundError:
        logger.debug(f'Loading the precision-scaled results from {csvfile} failed.')
        return

    precision_combinations = all_prec_df.loc[:, :'Lib']
    precision_combinations.drop('Lib', axis=1, inplace=True)
    trunc_columns = deepcopy(precision_combinations.columns)

    if len(trunc_columns) > 1:
        all_prec_df['all'] = all_prec_df[trunc_columns].astype(str).agg(''.join, axis=1)
    else:
        all_prec_df['all'] = all_prec_df[trunc_columns]    
    combinations = all_prec_df['all'].unique()

    per_trunc_dfs = {}
    for combination in combinations:
        trunc_df = all_prec_df.loc[all_prec_df['all'] == combination]
        # print(trunc_df)
        assert len(trunc_df.index) == 101 or len(trunc_df.index) == 1001, f"{circuit} : {combination}"
        per_trunc_dfs[combination] = trunc_df.loc[:, 'Lib':]

    return per_trunc_dfs


def get_overrides(circuit, netlist=None, candidates=None):
    """Get a dictionary for overiding specific initial values of chromosomes"""
    trunc_dfs = get_precision_scaling_data(circuit)
    if trunc_dfs is None:
        return

    no_timing_errors_dfs = {
        inp_combo: df for inp_combo, df in trunc_dfs.items() if df['MED'].max() == df['MED'].min() != 0
    }
    if len(no_timing_errors_dfs) == 0:
        return
  
    # get the input combination that produces the minimum error from precision scaling
    min_error_combo = min(no_timing_errors_dfs.keys(), key=lambda key: no_timing_errors_dfs[key]['MED'].max())
    if isinstance(min_error_combo, (int, np.int64)):
        min_error_combo = np.array([min_error_combo])

    # separate the combined string into len(unique_inputs) equal parts
    incr = len(min_error_combo)//len(netlist.netlist_data['unique_inputs'])
 
    all_inputs_of_combo = [
        int(min_error_combo[i: i + incr]) for i in range(0, len(min_error_combo), incr)
    ]
    # make sure the selected bits do not exceed the input bits of the netlist
    assert all(
        bits_combo <= bits_netlist
        for bits_combo, bits_netlist in zip(
            all_inputs_of_combo, netlist.netlist_data['bits_per_unique_input'].values()
        )
    ), f"Truncation bits {all_inputs_of_combo} are higher than the input bits of the netlist ({circuit})"

    overrides = {}
    for bits_combo, (input_name, bits_netlist) in zip(
            all_inputs_of_combo, netlist.netlist_data['bits_per_unique_input'].items()
    ):
        # get the input wires to truncate
        wires_to_trunc = netlist.netlist_data['inputs_by_name'][input_name][
            len(netlist.netlist_data['inputs_by_name'][input_name]) - bits_combo:
        ]

        # get the indices of the truncated wires in the candidate list
        overrides.update(dict(zip(
            [idx for idx, wire in enumerate(candidates) if wire in wires_to_trunc],
            [0] * len(wires_to_trunc)
        )))

    # if the wires are not included in the candidates, return None
    return overrides or None


def get_cp_net_indices(graph, candidates):
    """Get the indices of the candidates whith nets included in the critical path of the graph"""
    return [
        index for index, candidate in enumerate(candidates)
        if candidate in [
            edge.net for edge in graph.get_path_edges(graph.critical_path())
        ]
    ]


def forward(netlist, chromosome, inputs):
    """Calculate the output of the circuit with given approximation values and
    a specified set of arithmetic inputs"""
    assert len(inputs) == len(netlist.netlist_data['unique_inputs']), \
        f"Mismatch error: Number of inputs given {len(inputs)} does not match "\
        f"expected circuit inputs ({len(netlist.netlist_data['unique_inputs'])})"

    shared_location = os.path.join(project_dir, 'circuits', netlist.circuit)
    shared_lib = ctypes.CDLL(os.path.join(shared_location, '_top.so'))

    # define the array for the approximate values
    IntArray = ctypes.c_int * len(chromosome)
    ax_values = IntArray(*chromosome)
    # define inputs for the output calculation
    IntArray = ctypes.c_int * len(netlist.netlist_data['unique_inputs'])
    inputs = IntArray(*inputs)

    # call the function to get the output of one input sample
    circuit_func = getattr(shared_lib, f'top_{netlist.circuit}')
    result = circuit_func(ax_values, *inputs,
                          ctypes.c_int(int(netlist.netlist_data['signed_inputs'])),
                          ctypes.c_int(int(netlist.netlist_data['signed_outputs'])))

    return result


def get_mult_table(netlist, graph):
    """Get the truth table of a multiplier, for all of its possible values
    """
    assert len(set(netlist.netlist_data['bits_per_unique_input'].values())) == 1, \
        "Only multipliers of equal-sized inputs are allowed on this mode"
    num_bits = list(netlist.netlist_data['bits_per_unique_input'].values())[0]

    assert netlist.netlist_data.get('signed_inputs', False) == \
        netlist.netlist_data.get('signed_outputs', False), \
            "Cannot have a netlist of signed inputs and unsigned outputs (or vice versa)"
    is_signed = netlist.netlist_data.get('signed_inputs', False)

    assert len(netlist.netlist_data['unique_inputs']) == 2, \
        "A multiplier cannot have more than 2 inputs"

    # set input limits
    if is_signed:
        input_range = range(-2 ** (num_bits - 1), 2 ** (num_bits - 1) - 1 + 1)
    else:
        input_range = range(0, 2 ** num_bits - 1 + 1)

    # get the number of approximation candidates and create dummy chromosome
    _, variables_range = get_candidates(netlist, graph, candidate_type=None, reduced=False)
    chromosome = [gene[-1] for gene in variables_range]

    # get the entire results table
    table = {}
    for input1 in input_range:
        for input2 in input_range:
            res = forward(netlist, chromosome, (input1, input2))
            table[(input1, input2)] = res

            logger.info(f"{input1} x {input2} = {res} ({input1*input2})")

    return table
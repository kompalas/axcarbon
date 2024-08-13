import os
import argparse
import traceback
import logging
import ctypes
import pickle
from src import project_dir, ALL_CIRCUITS
from src.netlist import Netlist
from src.graph import DAG
from src.utils import translate_netlist_to_gates_and_wires, gates_to_nodes, wires_to_edges
from src.utils import env_cfg, get_gates_dict
from src.utils import get_mult_table
from src.nsga2.wrapper import EvolutionWrapper


logger = logging.getLogger()


def handle_subapps(args, netlist, graph):
    do_exit = False

    if args.prepare_mult_mode:
        table = get_mult_table(netlist, graph)
        # save table in file
        savefile = os.path.join(project_dir, 'circuits', netlist.circuit, 'table.pkl')
        with open(savefile, 'wb') as f:
            pickle.dump(table, f)
        do_exit = True

    return do_exit


def setup_circuit(circuit_name, libfile):
    gates_dict = get_gates_dict(libfile=libfile + '.v')
    netlist = Netlist(circuit_name, gates_dict)
    gates, wires = translate_netlist_to_gates_and_wires(netlist)
    nodes = gates_to_nodes(gates)
    edges = wires_to_edges(wires)
    graph = DAG(name=netlist.circuit, nodes=nodes, edges=edges,
                output_wires=netlist.netlist_data['outputs'])
    netlist.build_cfile(graph)
    return netlist, graph


def main():
    args = env_cfg()
    with open(os.path.join(logger.logdir, 'args.pkl'), 'wb') as f:
        pickle.dump(args, f)

    netlist, graph = setup_circuit(args.circuit, args.libfile)
    if handle_subapps(args, netlist, graph):
        return

    # create the GA application wrapper
    evolution = EvolutionWrapper(args, netlist, graph)
    try:
        evolution.evolve()
        evolution.plot_last_pareto()
    except KeyboardInterrupt:
        logger.info("")
        evolution.plot_last_pareto()
        raise


if __name__ == '__main__':
    try:
        main()
    except Exception:
        if logger is not None:
            # We catch unhandled exceptions here in order to log them to the log file
            # However, using the msglogger as-is to do that means we get the trace twice in stdout - once from the
            # logging operation and once from re-raising the exception. So we remove the stdout logging handler
            # before logging the exception
            handlers_bak = logger.handlers
            logger.handlers = [h for h in logger.handlers if type(h) != logging.StreamHandler]
            logger.error(traceback.format_exc())
            logger.handlers = handlers_bak
        raise
    except KeyboardInterrupt:
        logger.info("")
        logger.info("--- Keyboard Interrupt ---")
    finally:
        if logger.handlers:
            logfiles = [handler.baseFilename for handler in logger.handlers if
                        type(handler) == logging.FileHandler]
            logger.info(f"Log file(s) for this run in {' | '.join(logfiles)}")


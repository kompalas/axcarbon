import pandas as pd
import pickle
import glob
import re
import argparse
import traceback
import logging
import os.path
from src import project_dir, ALL_CIRCUITS

logger = logging.getLogger(__name__)


def logger_cfg(args):
    logger.propagate = False
    logging.getLogger("matplotlib").setLevel(logging.INFO)
    logger.setLevel(logging.DEBUG)
    # formatters
    stream_formatter = logging.Formatter('%(levelname)s %(message)s')
    file_formatter = logging.Formatter(
        '%(asctime)s %(levelname)s: %(message)s', datefmt='%d/%m/%Y %H:%M:%S'
    )
    # handlers
    stream_handler = logging.StreamHandler()
    stream_handler.setFormatter(stream_formatter)
    stream_handler.setLevel(logging.INFO)
    file_handler = logging.FileHandler(args.logfile, mode='w')
    file_handler.setFormatter(file_formatter)
    file_handler.setLevel(logging.DEBUG)
    # add handlers to logger
    logger.addHandler(stream_handler)
    logger.addHandler(file_handler)


def main():
    parser = argparse.ArgumentParser('Gather delay statistics for all cells based on timing reports')
    parser.add_argument("--circuit", "-c", choices=ALL_CIRCUITS,
                        help=f"Select circuit. Possible options: {'|'.join(ALL_CIRCUITS)}")
    parser.add_argument('--reports-dir', '-rd', dest='reports_dir',
                        help='Directory where timing reports are stored')
    parser.add_argument('--output-dir', '-od', dest='output_dir',
                        help='Directory to store the file with delay statistics')
    args = parser.parse_args()

    args.testdir = os.path.join(project_dir, 'test', 'cp_delay_stats')
    args.logfile = os.path.join(args.testdir, 'logs', f'delay_stats_{args.circuit}.log')
    logger_cfg(args)
    logger.info(f"Command line arguments: {args.__dict__}")

    gate_delay_csv = os.path.join(project_dir, 'circuits', args.circuit, 'gate_delay.rpt.csv')
    csv_delay = pd.read_csv(gate_delay_csv)

    regex = re.compile(r"(?P<GATE>[\w\d]+?)/(?P<PIN>[\w\d]+?)\s\(.*\)\s+?(?P<INCR>[\d.]+?)\s+?[\d.]+?\s+?(?P<RISEFALL>[rf])")

    stats_d = {}
    reports = glob.glob(f"{args.reports_dir}/*.rpt")
    logger.info(f"Reading {len(reports)} reports")
    for report in reports:
        logger.debug(f"Reading report {report}")

        with open(report, 'r') as f:
            report_data = f.read()

        input_pin, output_pin = None, None
        gate_appeared = False
        for gate, pin, delay, transition in re.findall(regex, report_data):

            # each gate comes up twice, first with its input pin, then its output
            if not gate_appeared:
                input_pin = pin
                delay_transition = 'delay_rise' if transition == 'f' else 'delay_fall'
                gate_appeared = True
            else:
                assert input_pin is not None
                # reset flag for next gate
                gate_appeared = False
                output_pin = pin

                sense_df = csv_delay.loc[
                    (csv_delay['gate'] == gate) &
                    (csv_delay['from'] == input_pin) &
                    (csv_delay['to'] == output_pin)
                ]
                min_delay_diff = 10
                for _, row in sense_df.iterrows():
                    rise = abs(row['delay_rise'] - float(delay))
                    fall = abs(row['delay_fall'] - float(delay))
                    if rise < min_delay_diff:
                        min_transition = 'delay_rise'
                        min_sense = row['sense']
                        min_delay_diff = rise
                    if fall < min_delay_diff:
                        min_transition = 'delay_fall'
                        min_sense = row['sense']
                        min_delay_diff = fall

                if gate not in stats_d:
                    stats_d[gate] = [((input_pin, output_pin), (min_sense, min_transition))]
                else:
                    stats_d[gate] += [((input_pin, output_pin), (min_sense, min_transition))]

                input_pin = None

    stats_count = {}
    final_stats_count = {}
    for gate, info_list in stats_d.items():
        logger.debug(f"Gate: {gate}")

        stats_count[gate] = {}
        for io_combo, sense_and_trans in info_list:
            if io_combo not in stats_count[gate]:
                stats_count[gate][io_combo] = {}
            if sense_and_trans in stats_count[gate][io_combo]:
                stats_count[gate][io_combo][sense_and_trans] += 1
            else:
                stats_count[gate][io_combo][sense_and_trans] = 1

        final_stats_count[gate] = {}
        for io_combo, sense_and_trans_d in stats_count[gate].items():
            final_stats_count[gate][io_combo] = max(sense_and_trans_d, key=sense_and_trans_d.get)
            # logger.debug(f"\tIO combo: {io_combo}")
            # logger.debug(f"\tSense and trans dict: {sense_and_trans_d}")
            # logger.debug(f"\tFinals dict: {final_stats_count[gate]}")

        # logger.debug(f"Gate: {gate}")
        logger.debug(f"Stats count: {stats_count[gate]}")
        logger.debug(f"Final stats count: {final_stats_count[gate]}")
        logger.debug("")

    with open(f"{args.output_dir}/gate_delay_stats.pkl", "wb") as f:
        pickle.dump(final_stats_count, f)
    logger.info(f"Saved delay statistics in {args.output_dir}/gate_delay_stats.pkl")


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
        exit(1)
    finally:
        if logger.handlers:
            logfiles = [handler.baseFilename for handler in logger.handlers if
                        type(handler) == logging.FileHandler]
            logger.info(f"Log file(s) for this run in {' | '.join(logfiles)}")

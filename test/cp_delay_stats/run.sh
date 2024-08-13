#!/bin/bash
# Get delay statistics for every gate over a specified number of approximate netlists

set -eou pipefail
#set -x

# TODO: Change this according to the new scripts in maindir

mkdir -p logs/
mkdir -p hdl/
mkdir -p gate/
mkdir -p reports/

circuit=${1?"Specify a circuit as the first positional argument"}
runs=${2?"Specify the number of approximate netlists as the second positional argument"}

maindir="$HOME/ax_map_accel/circuit_generation"
circdir="$maindir/circuits/$circuit"
testdir="$maindir/test/cp_delay_stats"

resdir="$testdir/results"
mkdir -p $resdir
resdir="$resdir/$circuit"
mkdir -p $resdir
rm -rf $resdir/*

reports_dir="$testdir/reports"
mkdir -p $reports_dir
reports_dir="$reports_dir/$circuit"
mkdir -p $reports_dir
rm -rf $reports_dir/timing_report_*

logfile="$testdir/logs/delay_stats_${circuit}.log"

synclk="0.0"
delay_rpt="reports/top_${synclk}ns.timing.pt.rpt"

# set up libraries and environment
libpath="$maindir/libs/nangate45/db"
libverilog="$maindir/libs/nangate45/verilog"
lib="nangate45.db"
libfile_python="nangate45"

# If asap7 libray is used, override the default nangate45
#libpath="$maindir/libs/asap7/7nm/db"
#libverilog="$maindir/libs/asap7/7nm/verilog"
#lib="asap7.db"
#libfile_python="asap7"

sed -i "/ENV_LIBRARY_PATH=/ c\export ENV_LIBRARY_PATH=\"$libpath\"" ./scripts/env.sh
sed -i "/ENV_LIBRARY_DB=/ c\export ENV_LIBRARY_DB=\"$lib\"" ./scripts/env.sh
sed -i "/ENV_LIBRARY_VERILOG_PATH=/ c\export ENV_LIBRARY_VERILOG_PATH=\"$libverilog\"" ./scripts/env.sh
sed -i "/ENV_CLK_PERIOD=/ c\export ENV_CLK_PERIOD=\"$synclk\"" ./scripts/env.sh

# create the approximate netlists
python3 $testdir/create_approx_netlists.py --circuit $circuit --libfile $libfile_python --runs $runs --deterministic --results-dir $resdir

# extract the timing report and CPD from each netlist
echo "Creating timing reports" | tee -a $logfile 2>&1
for netlist in $resdir/*.sv; do
    netlist_id="${netlist##*approx}"
    netlist_id="${netlist_id%.*}"
    echo $netlist_id

    cp $netlist ./gate/top.sv
    make sta

    if grep 'data arrival time' $delay_rpt > /dev/null; then
        delay="$(grep 'data arrival time' $delay_rpt | awk 'NR==1 {print $NF}')"
    else
        delay="0"
    fi

    mv $delay_rpt $reports_dir/timing_report_${netlist_id}.rpt
    echo -e "Report $netlist_id : $delay" >> $logfile

done
echo "Timing reports created in $reports_dir" | tee -a $logfile 2>&1

# collect timing arc statistics based on the timing reports
python3 $testdir/get_delay_stats.py --circuit $circuit --reports-dir $reports_dir --output-dir $circdir


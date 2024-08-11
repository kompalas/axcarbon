#!/bin/bash
# Extract GA results to approximate netlists

set -eou pipefail
set -x

function getBaselineMeasurement {
    circuit="$1"
    measurement="$2"
    bl_file="$maindir/results/baseline/${circuit}.txt"
    awk -F"\t" -v m="$measurement" 'NR==1 {for (i=1; i<=NF; i++) if ($i==m) foi=i;} NR==2 {print $foi}' $bl_file
}
function getErrorRate() {
    paste $maindir/sim/expected.txt  $maindir/sim/output.txt | awk '
    BEGIN {
        errors = 0;
    } {
        if ($1 ~ /x/ || $2 ~ /x/) next;
        if ($1 != $2) {
             errors++; 
        }
    }
    END {
        printf "%.3e\n", errors/NR
    }'
}
function getMRE() {
    paste $maindir/sim/expected.txt  $maindir/sim/output.txt | awk '
    BEGIN {
        mre = 0;
    } {
        if ($1 ~ /x/ || $2 ~ /x/) next;
        if ($1 != $2) {
            diff = $1 - $2;
            if (diff < 0)
                diff = -diff;
            if ($1 < 0)
                mre += diff/(-$1);
            else if ($1 > 0)
                mre += diff/$1;
        }
    }
    END {
        printf "%.3e\n", mre/NR
    }'
}
function getMinError() {
    paste $maindir/sim/expected.txt  $maindir/sim/output.txt | awk '
    BEGIN {
        min_error = 10^5;
    } {
        if ($1 ~ /x/ || $2 ~ /x/) next;
        if ($1 != $2) {
            diff = $1 - $2;
            if (diff < 0)
                diff = -diff;
            if (diff < min_error)
                min_error = diff;
        }
    }
    END {
        printf "%d\n", min_error
    }'
}
function getMaxError() {
    paste $maindir/sim/expected.txt  $maindir/sim/output.txt | awk '
    BEGIN {
        max_error = 0;
    } {
        if ($1 ~ /x/ || $2 ~ /x/) next;
        if ($1 != $2) {
           diff = $1 - $2; 
           if (diff < 0)
                diff = -diff;
            if (diff > max_error)
                max_error = diff;
        }
    }
    END {
        printf "%d\n", max_error
    }'
}

# directory where GA results are stored (in logs/ directory)
expdir="${1?Select a results directory as the first positional argument}"
# select the GA generation to extract results from
which_gen="${2:--1}"

maindir="$HOME/ax_map_accel/circuit_generation"

# if the last character of expdir is a slash, remove it
if [[ ${expdir: -1} == "/" ]]; then
    len=$((${#expdir}-1))
    expdir=${expdir:0:$len}
fi
# get the name of the results directory
expdir_name="${expdir##*/}"

# file with results summary from all pareto approximate circuits
resfile="$expdir/measurements.csv"
echo -e "N,Area,Delay,Power,ErrorRate,MRE,MED,NMED,MinError,MaxError" > $resfile

# find out the circuit from the results directory
avail_circs=($(find $maindir/circuits/* -type d))
for circdir in ${avail_circs[*]}; do
    circuit="${circdir##*/}"
    if echo $expdir | grep -q "$circuit"; then
        break
    fi
done
circdir="$maindir/circuits/$circuit"

# extract the baseline measurements
bl_area="$(getBaselineMeasurement $circuit Area)"
bl_delay="$(getBaselineMeasurement $circuit Delay)"
bl_power="$(getBaselineMeasurement $circuit Power)"
echo "-1,$bl_area,$bl_delay,$bl_power,0.0,0.0,0.0,0.0,0.0,0.0" >> $resfile


# extract pareto front and create approximate netlists
python3 $maindir/src/evaluation/pareto.py --circuit $circuit --experiment $expdir --results-directory $expdir \
                                          --generation $which_gen --error-metric med

# setup environment for evaluating the approximate netlists
if [ -f $HOME/eda/eda.setup ]; then
    set +u
    source $HOME/eda/eda.setup
    set -u
fi

# libraries
libpath="$maindir/libs/nangate45/db"
libverilog="$maindir/libs/nangate45/verilog"
lib="nangate45.db"
sed -i "/ENV_LIBRARY_PATH=/ c\export ENV_LIBRARY_PATH=\"$libpath\"" $maindir/scripts/env.sh
sed -i "/ENV_LIBRARY_DB=/ c\export ENV_LIBRARY_DB=\"$lib\"" $maindir/scripts/env.sh
sed -i "/ENV_LIBRARY_VERILOG_PATH=/ c\export ENV_LIBRARY_VERILOG_PATH=\"$libverilog\"" $maindir/scripts/env.sh

# simulation inputs and testbench
cp $circdir/top_tb.v $maindir/sim/top_tb.v
awk '{for (i=1; i<NF; i++) {printf("%s", $i); if(i<NF-1) printf("\t")} printf("\n")}' $circdir/inputs_eval.txt > $maindir/sim/inputs.txt
awk '{print $NF}' $circdir/inputs_eval.txt > $maindir/sim/expected.txt

# set simulation clock
simclk="$bl_delay"
sed -i "/localparam period =/ c\localparam period = $simclk;" $maindir/sim/top_tb.v

# set synthesis clock
synclk="0.0"
sed -i "/ENV_CLK_PERIOD=/ c\export ENV_CLK_PERIOD=\"$synclk\"" ./scripts/env.sh

# reports
area_rpt="$maindir/reports/top_${synclk}ns.area.rpt"
delay_rpt="$maindir/reports/top_${synclk}ns.timing.pt.rpt"
power_rpt="$maindir/reports/top_${synclk}ns.power.ptpx.rpt"
mkdir -p $maindir/allreports
rm -rf $maindir/allreports/*


# iterate over all created approximated netlists
for netl in $(find $expdir -name "approx[0-9]*.sv" | sort -V); do
    echo $netl
    # get netlist number
    netl_id="${netl##*approx}"
    netl_id="${netl_id%.sv}"

    # copy netlist to be ready for synthesis
    cp $netl $maindir/hdl/top.v

    # synthesis and get area
    make dcsyn
    area=$(awk '/Total cell area/ {print $NF}' $area_rpt)
    # get delay
    make sta
    delay="$(grep "data arrival time" $delay_rpt | awk 'NR==1 {print $NF}')"

    # get error
    rm -rf work_gate
    make gate_sim
    # get power
    make power
    power=$(awk '/Total Power/ {print $4}' $power_rpt)

    error_rate="$(getErrorRate)"
    mre="$(getMRE)"
    med="$($maindir/scripts/med.sh $maindir/sim/expected.txt $maindir/sim/output.txt)"
    outwidth="$(grep "parameter outwidth" $maindir/sim/top_tb.v | awk '{gsub(";", "", $NF); print $NF*1}')"
    nmed="$(awk -v a=$med -v b=$outwidth 'BEGIN {printf "%.3e\n", a/(2**b)}')"
    min_error="$(getMinError)"
    max_error="$(getMaxError)"

    # write results
    echo -e "$netl_id,$area,$delay,$power,$error_rate,$mre,$med,$nmed,$min_error,$max_error" >> $resfile

    # save latest reports
    mv $maindir/reports $maindir/allreports/ga_reports.${netl_id}

done

# keep a copy of the latest resutls for easy access
cp $resfile $maindir/results/latest_ga_results.csv


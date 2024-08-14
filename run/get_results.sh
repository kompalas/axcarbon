#!/bin/bash
# Extract GA results to approximate netlists

set -eou pipefail
set -x

expdir=${1?"Specify the directory at which GA results are stored"}
which_gen="${2:--1}"


############## Custom Functions ###################

function getBaselineMeasurement {
    circuit="$1"
    measurement="$2"
    bl_file="$maindir/results/baseline/${circuit}.txt"
    awk -F"\t" -v m="$measurement" 'NR==1 {for (i=1; i<=NF; i++) if ($i==m) foi=i;} NR==2 {print $foi}' $bl_file
}
# TODO: Fix these to handle binary numbers
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

################# Setup ######################

maindir="$HOME/axcarbon"
testdir="$maindir"
cd $testdir
library="nangate45"
synclk="0.0"
top_design="top"

# if the last character of expdir is a slash, remove it
if [[ ${expdir: -1} == "/" ]]; then
    len=$((${#expdir}-1))
    expdir=${expdir:0:$len}
fi
exp_name="${expdir##*/}"
# figure out circuit name from current directory
circuit="$(echo $expdir | awk -F'_' '{for (i=1; i<=NF; i++) if ($i ~ "ga") print $(i+1)}')"
circdir="$maindir/circuits/$circuit"

# results directory and file
mkdir -p $expdir/reports
mkdir -p $expdir/netlists
resfile="$expdir/eval_results.csv"
echo "NetlID,Lib,SynClk,SimClk,Area,Delay,Power,ErrorRate,MRE,MED,NMED,MinError,MaxError" > $resfile

# set up libraries
if [[ $library == "asap7" ]]; then
    libpath="$maindir/libs/asap7/7nm/db"
    libverilog="$maindir/libs/asap7/7nm/verilog"
    lib="asap7.db"
    tunit="ps"
elif [[ $library == "nangate45" ]]; then
    libpath="$maindir/libs/nangate45/db"
    libverilog="$maindir/libs/nangate45/verilog"
    lib="nangate45.db"
    tunit="ns"
elif [[ $library == "variability14" ]]; then
    libpath="$maindir/libs/variability14/db"
    libverilog="$maindir/libs/variability14/verilog"
    lib="predicted_0.db"
    tunit="ns"
else
    echo "Invalid library option. Options are: asap7, variability14, nangate45"
    exit 1
fi

# prepare testbench, inputs and true outputs for simulation
cp $circdir/tb.v ./sim/top_tb.v
# simulation clock is given by the delay of each exact circuit
simclk="$(awk 'NR==2 {printf("%.2f", $2)}' $maindir/results/baseline/$circuit.txt)"
awk -F'_' '{for (i=1; i<NF; i++) {printf("%s", $i); if(i<NF-1) printf("_")} printf("\n")}' $circdir/inputs_eval.txt > ./sim/inputs.txt
awk -F'_' '{print $NF}' $circdir/inputs_eval.txt > ./sim/expected.txt
sed -i "/parameter PERIOD=/ c\parameter PERIOD=$simclk;" ./sim/top_tb.v
num_inputs="$(wc -l ./sim/inputs.txt | awk '{print $1}')"
sed -i "/parameter NUM_INPUTS=/ c\parameter NUM_INPUTS=$num_inputs;" sim/top_tb.v

# setup environment
sed -i "/ENV_LIBRARY_PATH=/ c\export ENV_LIBRARY_PATH=\"$libpath\"" ./scripts/env.sh
sed -i "/ENV_LIBRARY_DB=/ c\export ENV_LIBRARY_DB=\"$lib\"" ./scripts/env.sh
sed -i "/ENV_LIBRARY_VERILOG_PATH=/ c\export ENV_LIBRARY_VERILOG_PATH=\"$libverilog\"" ./scripts/env.sh
sed -i "/ENV_CLK_PERIOD=/ c\export ENV_CLK_PERIOD=\"$synclk\"" ./scripts/env.sh

# report files from synopsys tools
area_rpt="$testdir/reports/${top_design}_${synclk}${tunit}.area.rpt"
delay_rpt="$testdir/reports/${top_design}_${synclk}${tunit}.timing.pt.rpt"
power_rpt="$testdir/reports/${top_design}_${synclk}${tunit}.power.ptpx.rpt"


################# Evaluation ######################

# extract the baseline measurements
bl_area="$(getBaselineMeasurement $circuit Area)"
bl_delay="$(getBaselineMeasurement $circuit Delay)"
bl_power="$(getBaselineMeasurement $circuit Power)"
echo "-1,$library,$synclk,$simclk,$bl_area,$bl_delay,$bl_power,0.0,0.0,0.0,0.0,0.0,0.0" >> $resfile

# create approximate netlists from GA results and evaluate them
python3 $maindir/src/evaluation/ga_pareto.py \
    --circuit $circuit \
    --experiment $expdir \
    --results-directory $expdir/netlists \
    --generation $which_gen

# iterate over each approximate netlist
for netl in $(find $expdir/netlists/ -name "approx[0-9]*.sv" | sort -V); do
    echo $netl
    cp $netl hdl/top.v
    netl_id="${netl##*approx}"
    netl_id="${netl_id%.sv}"

    # synthesis to get area
    make dcsyn
    area="$(awk '/Total cell area/ {print $NF}' $area_rpt)"

    # STA to get delay
    make sta
    delay="$(grep "data arrival time" $delay_rpt | awk 'NR==1 {print $NF}')"

    # gate level simulation to get error
    rm -rf work_gate_lib
    rm -rf gate_simv.daidir
    rm -rf tech_lib/
    make gate_sim
    error_rate="$(getErrorRate)"
    mre="$(getMRE)"
    med="$(./scripts/med.sh ./sim/expected.txt ./sim/output.txt)"
    outwidth="$(grep "parameter OUT_WIDTH" ./sim/top_tb.v | awk -F'=' '{gsub(";", "", $NF); print $NF*1}')"
    nmed="$(awk -v a=$med -v b=$outwidth 'BEGIN {printf "%.3e\n", a/(2**b)}')"
    min_error="$(getMinError)"
    max_error="$(getMaxError)"

    # get power
    make power
    power="$(awk '/Total Power/ {print $4}' $power_rpt)"

    # write the results 
    echo -e "$netl_id,$library,$simclk,$area,$delay,$power,$error_rate,$mre,$med,$nmed,$min_error,$max_error" >> $resfile

    # move reports to the appropriate directory
    rm -rf $expdir/reports/approx${netl_id}
    mv $testdir/reports $expdir/reports/approx${netl_id}

done

# keep a copy of the latest resutls for easy access
cp $resfile $maindir/results/latest_ga_results.csv

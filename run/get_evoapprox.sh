#!/bin/bash
# Extract detailed measurements for all circuits in the EvoApprox library

set -eou pipefail
set -x

###### Functions to get measurements #######

function getArea() {
    awk '/Total cell area/ {print $NF}' $area_rpt
}
function getDelay() {
    if grep -q "data arrival time" $delay_rpt; then
        grep "data arrival time" $delay_rpt | awk 'NR==1 {print $NF}'
    else
        echo "0"
    fi
}
function getPower() {
    awk '/Total Power/ {print $4}' $power_rpt
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
function getBitsOp1 {
    echo $1 | awk -F'/' '{for (i=1;i<=NF;i++) if ($i ~ /signed/) print $i}' | sed 's \([0-9][0-9]*\).* \1 g'
}
function getBitsOp2 {
    echo $1 | awk -F'/' '{for (i=1;i<=NF;i++) if ($i ~ /signed/) print $i}' | sed 's [0-9][0-9]*x\([0-9][0-9]*\).* \1 g'
}
function getBitsOutp {
   grep "output" $1 | awk '{gsub("[]:[]", " ", $2); split($2, a, " "); print a[1] + 1}'
}
function isSigned {
    echo $1 | awk -F'/' '{for (i=1;i<=NF;i++) if ($i ~ /signed/) print $i}' | sed 's/.*_//g' | awk '{if ($1 ~ /unsigned/) print "false"; else print "true"}'
}
function isMult {
    if echo $1 | grep -q "mul"; then
        echo "true"
    elif echo $1 | grep -q "add"; then
        echo "false"
    else
        echo "Wrong circuit type: $1. Exiting..."
        exit 1
    fi
}

###### Variable declaration ######

maindir="$HOME/ax_map_accel/circuit_generation"
circdir="$maindir/evoapproxlib"
reportsdir="$maindir/allreports/evoapproxlib"
resdir="$maindir/results"
resfile="$resdir/evoapproxlib.csv"
tb="$maindir/circuits/generic_tb.v"
params_file="$maindir/circuits/parameters.vh"

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

# set synthesis clock
synclk="0.0"
sed -i "/ENV_CLK_PERIOD=/ c\export ENV_CLK_PERIOD=\"$synclk\"" $maindir/scripts/env.sh

# reports
area_rpt="$maindir/reports/top_${synclk}ns.area.rpt"
delay_rpt="$maindir/reports/top_${synclk}ns.timing.pt.rpt"
power_rpt="$maindir/reports/top_${synclk}ns.power.ptpx.rpt"
mkdir -p $maindir/allreports
mkdir -p $maindir/allreports/evoapproxlib
#rm -rf $maindir/allreports/*


###### Extract measurementss from each file ######

# initialize results file, if it does not exist
if ! [ -f "$resfile" ]; then
echo "Name,Type,SynClk,SimClk,Area,Delay,Power,ErrorRate,MRE,MED,NMED,MinError,MaxError" > $resfile
fi

# get all verilog files
circuits=($(find $circdir -type f -name "*.v"))
for vfile in ${circuits[*]}; do

# get circuit name
name="${vfile##*/}"

# check if the circuit has already been evaluated
if grep -q $name $resfile; then
    continue
fi

# get module name
#module="${name%%.v}"
#sed -i "/ENV_TOP_DESIGN=/ c\export ENV_TOP_DESIGN=\"$module\"" $maindir/scripts/env.sh

# get circuit type
if [ "$(isMult $name)" == "true" ]; then
    type="M"
    type_full="multipliers"
else
    type="A"
    type_full="adders"
fi

# get bitwidth and signed flag
bits1="$(getBitsOp1 $vfile)"
if [ "$type" == "M" ]; then
bits2="$(getBitsOp2 $vfile)"
else
bits2="$bits1"
fi
outbits="$(getBitsOutp $vfile)"
signed="$(isSigned $vfile)"
if [ "$signed" == "true" ]; then
    prefix="S"
else
    prefix="U"
fi

# synthesis
cp $vfile $maindir/hdl/top.v
# rename module as 'top'
sed -i 's_module\(.*\)(_module top (_g' $maindir/hdl/top.v
make dcsyn
area="$(getArea)"

# check if design gives constant output and continue
if (( $(echo "$area == 0" | bc -l) )); then
    echo "$name,${bits1}x${bits2}${prefix}${type},$synclk,$simclk,$area,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0" >> $resfile
    continue
fi

# STA for delay calculation
make sta
delay="$(getDelay)"

# Prepare for gate level simulation
# configure inputs and outputs
source $maindir/src/bash/create_inputs.sh 1000000 $signed $maindir/sim/inputs.txt $bits1 $bits2
if [ "$type" == "M" ]; then
    awk '{print $1 * $2}' $maindir/sim/inputs.txt > $maindir/sim/expected.txt
else
    awk '{print $1 + $2}' $maindir/sim/inputs.txt > $maindir/sim/expected.txt
fi

# create testbench with correct bitwidth and clock
cp $tb $maindir/sim/top_tb.v
cp $params_file $maindir/sim/parameters.vh
sed -i "/parameter width1/ c\parameter width1 = $bits1;" $maindir/sim/parameters.vh
sed -i "/parameter width2/ c\parameter width2 = $bits2;" $maindir/sim/parameters.vh
sed -i "/parameter outwidth/ c\parameter outwidth = $outbits;" $maindir/sim/parameters.vh
simclk="$delay"
sed -i "/localparam period/ c\localparam period = $simclk;" $maindir/sim/parameters.vh

# perform gate level simulations
make gate_sim
# extract error measurements
error_rate="$(getErrorRate)"
mre="$(getMRE)"
med="$($maindir/scripts/med.sh $maindir/sim/expected.txt $maindir/sim/output.txt)"
nmed="$(awk -v a=$med -v b=$outbits 'BEGIN {printf "%.3e\n", a/(2**b)}')"
min_error="$(getMinError)"
max_error="$(getMaxError)"

# get power
make power
power="$(getPower)"

# write results to file
echo "$name,${bits1}x${bits2}${prefix}${type},$synclk,$simclk,$area,$delay,$power,$error_rate,$mre,$med,$nmed,$min_error,$max_error" >> $resfile

# save reports
mkdir -p $reportsdir/$type_full
mkdir -p $reportsdir/$type_full/$name
mv $area_rpt $delay_rpt $power_rpt $reportsdir/$type_full/$name

done


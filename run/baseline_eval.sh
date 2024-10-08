#!/usr/bin/bash
# Evaluate baseline netlist of a given circuit
set -eou pipefail
set -x

circuit=${1?"Specify a circuit as the first positional argument"}
library=${2?"Specify a library as the second positional argument. Options are: asap7, variability14, nangate45"}
floating_point_format=${3:-"null"}  # if the circuit is floating-point, specify the format: FP32, FP16, bfloat16

maindir="$HOME/axcarbon"
testdir="$maindir"
cd $testdir
circdir="$maindir/circuits/$circuit"
top_design="top"

synclk="0.0"
delay_incr="0.01"

# functions to get area, delay and power
function getArea {
    awk '/Total cell area/ {print $NF}' $testdir/reports/${top_design}_${synclk}${tunit}.area.rpt
}
function getDelay {
    grep "data arrival time" $testdir/reports/${top_design}_${synclk}${tunit}.timing.pt.rpt | awk 'NR==1 {print $NF}'
}
function getPower {
    awk '/Total Power/ {print $4}' $testdir/reports/${top_design}_${synclk}${tunit}.power.ptpx.rpt
}

# check if the circuit is floating-point
is_floating_point="false"
if echo $circuit | grep -q "^fp"; then
    is_floating_point="true"
fi

# set up libraries and environment
if [[ $library == "asap7" ]]; then
    libpath="$maindir/libs/asap7/db"
    libcpath="$maindir/libs/asap7/c"
    libverilog="$maindir/libs/asap7/verilog"
    lib="asap7.db"
    tunit="ps"
    delay_incr="0.1"
    if ! grep -q "set_dont_use {asap7" $testdir/scripts/synthesis.tcl; then
        sed -i "28i set_dont_use {asap7/FAxp33_ASAP7_6t_R}" $testdir/scripts/synthesis.tcl
    fi

elif [[ $library == "nangate45" ]]; then
    libpath="$maindir/libs/nangate45/db"
    libcpath="$maindir/libs/nangate45/c"
    libverilog="$maindir/libs/nangate45/verilog"
    lib="nangate45.db"
    tunit="ns"
elif [[ $library == "variability14" ]]; then
    libpath="$maindir/libs/variability14/db"
    libcpath="$maindir/libs/variability14/c"
    libverilog="$maindir/libs/variability14/verilog"
    lib="predicted_0.db"
    tunit="ns"
elif [[ $library == "fdsoi28" ]]; then
    libpath="$maindir/libs/fdsoi28/db"
    libcpath="$maindir/libs/fdsoi28/c"
    libverilog="$maindir/libs/fdsoi28/verilog"
    lib="28nm_FDSOI_0.9V_300K.db"
    tunit="ns"
elif [[ $library == "egfet" ]]; then
    libpath="$maindir/libs/egfet/db"
    libcpath="$maindir/libs/egfet/c"
    libverilog="$maindir/libs/egfet/verilog"
    lib="EGFET_1.0V_enabled.db"
    tunit="ns"
    delay_incr="100"
else
    echo "Invalid library option. Options are: asap7, variability14, fdsoi28, nangate45, egfet"
    exit 1
fi
export tunit="$tunit"

# setup libraries
sed -i "/ENV_LIBRARY_PATH=/ c\export ENV_LIBRARY_PATH=\"$libpath\"" ./scripts/env.sh
sed -i "/ENV_LIBRARY_DB=/ c\export ENV_LIBRARY_DB=\"$lib\"" ./scripts/env.sh
sed -i "/ENV_LIBRARY_VERILOG_PATH=/ c\export ENV_LIBRARY_VERILOG_PATH=\"$libverilog\"" ./scripts/env.sh

# prepare C libraries
if [ ! -f "$libcpath/library.c" ] || [ ! -f "$libcpath/library.h" ]; then
    echo "Library C-files do not exist under $libcpath. Exiting"
    exit 1
fi
rm -f $maindir/libs/*.o
rm -f $maindir/libs/*.so
cp $libcpath/library.c $maindir/libs/
cp $libcpath/library.h $maindir/libs/

# prepare the results directory and file
mkdir -p $testdir/results
mkdir -p $testdir/results/baseline
resfile=$testdir/results/baseline/${circuit}.txt
echo -e "SynClk\tArea\tDelay\tError\tPower" > $resfile

# prepare testbench, inputs and true outputs for simulation
cp $circdir/top.v ./hdl/top.v
cp $circdir/tb.v ./sim/top_tb.v
awk -F'_' '{for (i=1; i<NF; i++) {printf("%s", $i); if(i<NF-1) printf("_")} printf("\n")}' $circdir/inputs.txt > ./sim/inputs.txt
awk -F'_' '{print $NF}' $circdir/inputs.txt > ./sim/expected.txt

while true; do

    # Iteratively, perform synthesis and STA to find the minimum clock period that the circuit can match
    sed -i "/ENV_CLK_PERIOD=/ c\export ENV_CLK_PERIOD=\"$synclk\"" ./scripts/env.sh
    make dcsyn
    area="$(getArea)"
    make sta
    delay="$(getDelay)"

    if [ 1 -eq "$(awk -v d=$delay -v s=$synclk 'BEGIN {if (d>s) print "1"; else print "0"}')" ]; then
        synclk="$(echo $delay | awk '{printf "%.2f\n", $1 + 0.005}')"
        continue
    fi

    # Iteratively, perform gate level simulations to find the simulation clock which does not produce
    # any timing errors. That would be the circuit's functional Tclk
    # NOTE: 'true' may not be portable, so we use integer comparison

    sed -i "/parameter PERIOD=/ c\parameter PERIOD=$delay;" ./sim/top_tb.v
    rm -rf work_gate_lib
    rm -rf gate_simv.daidir
    rm -rf tech_lib/

    make gate_sim

    if [ $floating_point_format != "null" ]; then
        python3 $maindir/src/numerical_conversion.py \
            --mode convert \
            --convert-from binary \
            --convert-to ieee754 \
            --input-file sim/expected.txt \
            --output-file sim/expected.txt \
            --input-separator underscore \
            --output-separator underscore \
            --ieee754-format $floating_point_format
        python3 $maindir/src/numerical_conversion.py \
            --mode convert \
            --convert-from binary \
            --convert-to ieee754 \
            --input-file sim/output.txt \
            --output-file sim/output.txt \
            --input-separator underscore \
            --output-separator underscore \
            --ieee754-format $floating_point_format
        error="$(./scripts/errors/decimal/med.sh ./sim/expected.txt ./sim/output.txt)"
    else
        error="$(./scripts/errors/binary/med.sh ./sim/expected.txt ./sim/output.txt)"
    fi

    if [ 1 -eq "$(awk -v e=$error 'BEGIN {if (e>0) print "1"; else print "0"}')" ]; then
        synclk="$(awk -v d=$delay -v incr=$delay_incr 'BEGIN {print d+incr}' | awk '{printf "%.2f\n", $1}')"
    else
        # break only if the error is zero and the delay is less than the synthesis delay (checked above)
        break
    fi

done
# error="0.0"

# get power
make power
power="$(getPower)"
# power="0.0"

echo -e "$synclk\t$area\t$delay\t$error\t$power" >> $resfile


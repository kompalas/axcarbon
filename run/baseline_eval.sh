#!/usr/bin/bash
# Evaluate baseline netlist of a given circuit
set -eou pipefail
set -x

circuit=${1?"Specify a circuit as the first positional argument"}
library=${2?"Specify a library as the second positional argument. Options are: asap7, 14nm, nangate45"}

export synclk="0.0"
incr="0.01"
top_design="top"

maindir="$HOME/axcarbon"
testdir="$maindir"
cd $testdir

circdir="$maindir/circuits/$circuit"

# set up libraries and environment
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
elif [[ $library == "14nm" ]]; then
    # TODO: find 14nm library
    libpath="$maindir/libs/14nm/db"
    libverilog="$maindir/libs/14nm/verilog"
    lib="14nm.db"
else
    echo "Invalid library option. Options are: asap7, 14nm, nangate45"
    exit 1
fi

mkdir -p $testdir/results
mkdir -p $testdir/results/baseline
resfile=$testdir/results/baseline/${circuit}.txt
echo -e "Area\tDelay\tMED\tPower" > $resfile

# prepare testbench, inputs and true outputs for simulation
cp $circdir/top.v ./hdl/top.v
cp $circdir/tb.v ./sim/top_tb.v
awk '{for (i=1; i<NF; i++) {printf("%s", $i); if(i<NF-1) printf(" ")} printf("\n")}' $circdir/inputs.txt > ./sim/inputs.txt
awk '{print $NF}' $circdir/inputs.txt > ./sim/expected.txt

# setup environment
sed -i "/ENV_LIBRARY_PATH=/ c\export ENV_LIBRARY_PATH=\"$libpath\"" ./scripts/env.sh
sed -i "/ENV_LIBRARY_DB=/ c\export ENV_LIBRARY_DB=\"$lib\"" ./scripts/env.sh
sed -i "/ENV_LIBRARY_VERILOG_PATH=/ c\export ENV_LIBRARY_VERILOG_PATH=\"$libverilog\"" ./scripts/env.sh
sed -i "/ENV_CLK_PERIOD=/ c\export ENV_CLK_PERIOD=\"$synclk\"" ./scripts/env.sh

# reports
area_rpt="$testdir/reports/${top_design}_${synclk}${tunit}.area.rpt"
delay_rpt="$testdir/reports/${top_design}_${synclk}${tunit}.timing.pt.rpt"
power_rpt="$testdir/reports/${top_design}_${synclk}${tunit}.power.ptpx.rpt"

# get area from synthesis
make dcsyn
area=$(awk '/Total cell area/ {print $NF}' $area_rpt)

# sta to get delay
make sta
delay="$(grep "data arrival time" $delay_rpt | awk 'NR==1 {print $NF}')"

# Iteratively, perform gate level simulations to find the simulation clock which does not produce
# any timing errors. That would be the circuit's functional Tclk
# NOTE: 'true' may not be portable, so we use integer comparison
while true; do
   sed -i "/parameter PERIOD=/ c\parameter PERIOD=$delay;" ./sim/top_tb.v

   rm -rf work_gate_lib
   rm -rf gate_simv.daidir
   rm -rf tech_lib/

   make gate_sim
   error="$(./scripts/med.sh ./sim/expected.txt ./sim/output.txt)"
   if [ 1 -eq "$(awk -v e=$error 'BEGIN {if (e>0) print "1"; else print "0"}')" ]; then
       delay="$(awk -v d=$delay -v incr=$incr 'BEGIN { print d + incr }')"
   else
       break
   fi
done
# error="0.0"

# get power
make power
power=$(awk '/Total Power/ {print $4}' $power_rpt)
# power="0.0"

echo -e "$area\t$delay\t$error\t$power" >> $resfile


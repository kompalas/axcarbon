#!/usr/bin/bash
# Evaluate baseline netlist of a given circuit
set -eou pipefail
set -x

circuit=${1?"Specify a circuit as the first positional argument"}
export synclk="0.0"
incr="0.005"

maindir="$HOME/axcarbon"
testdir="$maindir"
cd $testdir

circdir="$maindir/circuits/$circuit"

# set up libraries and environment
libpath="$maindir/libs/asap7/7nm/db"
libverilog="$maindir/libs/asap7/7nm/verilog"
lib="asap7.db"

#libpath="$maindir/libs/asap7/7nm/db"
#libverilog="$maindir/libs/asap7/7nm/verilog"
#lib="asap7.db"

mkdir -p $testdir/results
mkdir -p $testdir/results/baseline
resfile=$testdir/results/baseline/${circuit}.txt
echo -e "Area\tDelay\tMED\tPower" > $resfile

# prepare testbench, inputs and true outputs for simulation
cp $circdir/top.v ./hdl/top.v
cp $circdir/tb.v ./sim/top_tb.v
awk '{for (i=1; i<NF; i++) {printf("%s", $i); if(i<NF-1) printf("\t")} printf("\n")}' $circdir/inputs.txt > ./sim/inputs.txt
awk '{print $NF}' $circdir/inputs.txt > ./sim/expected.txt

# setup environment
sed -i "/ENV_LIBRARY_PATH=/ c\export ENV_LIBRARY_PATH=\"$libpath\"" ./scripts/env.sh
sed -i "/ENV_LIBRARY_DB=/ c\export ENV_LIBRARY_DB=\"$lib\"" ./scripts/env.sh
sed -i "/ENV_LIBRARY_VERILOG_PATH=/ c\export ENV_LIBRARY_VERILOG_PATH=\"$libverilog\"" ./scripts/env.sh
sed -i "/ENV_CLK_PERIOD=/ c\export ENV_CLK_PERIOD=\"$synclk\"" ./scripts/env.sh

# reports
area_rpt="$testdir/reports/top_${synclk}ns.area.rpt"
delay_rpt="$testdir/reports/top_${synclk}ns.timing.pt.rpt"
power_rpt="$testdir/reports/top_${synclk}ns.power.ptpx.rpt"

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
   sed -i "/localparam period =/ c\localparam period = $delay;" ./sim/top_tb.v
   rm -rf work_gate
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
power="0.0"

echo -e "$area\t$delay\t$error\t$power" >> $resfile


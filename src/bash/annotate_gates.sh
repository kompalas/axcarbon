#!/usr/bin/bash
# Use timing report to create csv with annotations for the netlist-equivalent DAG
# The report comes from the average library, with LVF table from all variation librariess
# Input arguments: 1=circuit, 2=timing report for delay calculation, 3=csv file to store results
# Invocation example: ./annotate_gates.sh adder16 ./top_0ns.adder16_delay_calc.pt.rpt

# input arguments
circ="${1?"Set circuit as first positional argument."}"
report_file="${2?"Set report file as second positional argument"}"

maindir="$HOME/ax_map_accel/circuit_generation"
csvfile="${3:-$maindir/circuits/${circ}/gate_delay.rpt.csv}"

# initialize csv file
printf "gate,from,to,type,sense," > $csvfile
printf "delay_rise,delay_fall," >> $csvfile
printf "trans_rise,trans_fall\n" >> $csvfile

# get all information from report
# NOTE: read the report to make sure that each pattern shows up in this order! If not,
#  information may be muddled between transitions

sed -n "/Library Cell/ s_[\']__g; p" $report_file | awk '
/From pin:/ {
	split($NF, gates_from, "/"); printf "%s,%s,", gates_from[1], gates_from[2]
}
/To pin:/ {
	split($NF, gates_to, "/"); if(gates_from[1] != gates_to[1]) {printf "ASSERTION ERROR"; exit 1};  printf "%s,", gates_to[2]; 
}
/Library Cell/ {
	printf "%s,", $NF
}
/arc sense:/ {
  printf "%s,", $NF
}
/Rise delay/ {
	printf "%s,", $NF
}
/Fall delay/ {
	printf "%s,", $NF
}
/Rise transition/ {
	printf "%s,", $NF
}
/Fall transition/ {
	printf "%s\n", $NF
}
' >> $csvfile


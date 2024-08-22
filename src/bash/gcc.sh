#!/bin/bash
# Example of running a C program with a shared library
# like the ones created in the circuits directories

maindir="$HOME/axcarbon"
cfile="top.c"
ofile="top"

exact_chromosome=true

if $exact_chromosome; then
    # create an exact chromosome with -1 values
    num_ax_values="515"
    chromosome=()
    for((i=0; i<$num_ax_values; i++)); do
        chromosome+=("-1")
    done

else
    # get the chromosome from the the logfile of ga_pareto.py
    which_chromosome="0"
    # example of a logfile
    logfile="$maindir/saved_logs/ga_mac___2024.08.15-08.01.13.566/pareto__mac_ga_mac___2024.08.15-08.01.13.566.log"
    chromosome=( $(grep "Chromosome $which_chromosome:" $logfile | awk -F'[' '{print $NF}' | awk '{gsub("]", "", $0); gsub(" ", "", $0); print}' | awk -F',' '{for (i=1; i<=NF;i++) print $i}') )
fi

# compile the C netlist
gcc -I${maindir}/libs -L${maindir}/libs ${maindir}/libs/library.c $cfile -o $ofile
# execute with the chromosome as arguments
$ofile ${chromosome[@]}
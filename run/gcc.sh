#!/bin/bash
# Example of running a C program with a shared library
# like the ones created in the circuits directories

maindir="$HOME/axcarbon"
cfile="top.c"
ofile="top"

num_ax_values="515"

ax_values=()
for((i=0; i<$num_ax_values; i++)); do
    ax_values+=("-1")
done

gcc -I${maindir}/libs -L${maindir}/libs ${maindir}/libs/library.c $cfile -o $ofile
./$ofile ${ax_values[@]}
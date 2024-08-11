#!/bin/bash
# Create shared .so object from c-file

set -euo pipefail
# set -x

cfile=${1?"Set c-file as first positional argument"}

maindir="$HOME/ax_map_accel/circuit_generation"


dir="$(dirname $cfile)"
file="${cfile##*/}"
ofile="$dir/${file%.*}.o"
shared_file="$dir/_${file%.*}.so"

gcc -fPIC -O2 -I$maindir/libs -c $cfile -o $ofile
gcc -shared $ofile -o $shared_file

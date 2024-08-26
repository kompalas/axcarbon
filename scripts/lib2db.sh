#!/bin/bash
# Example: ./lib2db.sh /home/libs/ libname.db libname.db
source ./scripts/env.sh

mkdir -p logs

export LIB_PATH="$1"
export LIB_TO_COMPILE="$2"
export LIB_OUTPUT_DB="$3"

lc_shell -f ./scripts/lib2db.tcl | tee ./logs/lib2db.log
mv lc_command.log lc_output.txt logs/

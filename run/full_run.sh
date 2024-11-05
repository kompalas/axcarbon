#!/bin/bash

circuit="mult_uint11b_7nm"
library="asap7"
inputs="11 11"

./run/setup_circuit.sh $circuit $library null $inputs
./run/ga.sh $circuit $library
logdir="$(find logs/ -type d -name "*ga_${circuit}*" | sort -rV | head -n 1)"
./run/get_results.sh $logdir $library
cp -r $logdir saved_logs/
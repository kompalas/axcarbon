#!/usr/bin/bash
# Use circuit as the first argument and an integer of bits for every input after that
# example usage: ./setup_circuit.sh mult8 8 8

set -euo pipefail
#set -x

circuit=${1?"Specify the circuit as first positional argument"}
# if inputs already exist, leave the second positional argument unset
inputs_exist=${2:-"True"}

maindir="$HOME/axcarbon"
circdir="$maindir/circuits/$circuit"

mkdir -p $maindir/hdl
mkdir -p $maindir/sim

# get rtl description and synthesize design
cp $circdir/top.v hdl/

# create initial inputs file, if input bitwidth is specified
if [[ ! "$inputs_exist" == "True" ]]; then
    bits_num=$(($#-1))

    # size of input dataset
    num_inputs_optim="100000"
    num_inputs_eval="1000000"
    
    # check if inputs are supposed to be signed numbers
    if grep -q "input signed" ./hdl/top.v; then
        signed="--signed"
    else
        signed=""
    fi

    # generate inputs for optimization dataset
    python3 $maindir/src/create_inputs.py \
        --num-inputs $num_inputs_optim \
        --deterministic \
        --type decimal \
        --separator space \
        --bits ${@:2:$bits_num} \
        --out-file $maindir/sim/inputs.txt \
        $signed

    cp $circdir/tb.v sim/top_tb.v
    simclk="10.0"
    sed -i "/localparam period =/ c\localparam period = $simclk;" sim/top_tb.v

    # rtl simulation to record output
    rm -rf work/
    make rtl_sim
    paste -d"\t" $maindir/sim/inputs.txt $maindir/sim/output.txt > $circdir/inputs.txt

    # generate inputs for evaluation
    python3 $maindir/src/create_inputs.py 
        --num-inputs $num_inputs_eval \
        --deterministic \
        --type decimal \
        --separator space \
        --bits ${@:2:$bits_num} \
        --out-file $maindir/sim/inputs.txt \
        $signed

    rm -rf work/
    make rtl_sim
    paste -d"\t" sim/inputs.txt sim/output.txt > $circdir/inputs_eval.txt
fi

# get baseline measurements for the circuit
source $maindir/run/baseline_eval.sh $circuit

# save netlist
cp $maindir/gate/top.v $circdir/top.sv

# get delay annotations from sta delay report
delay_rpt="$maindir/reports/top_${synclk}ns.delay_calc.pt.rpt"
if ! [ -f "$delay_rpt" ]; then
    echo "Perform STA with delay calculation to annotate gates. Exiting..."
    exit 1
fi
if grep -q "Error" $delay_rpt; then
    echo "Errors found in delay calculation. Cannot proceed. Exiting..."
    exit 1
fi

# annotate each gate with the delay calculation report
source $maindir/src/bash/annotate_gates.sh $circuit $delay_rpt

# get delay stats if test folder is not used. Decided by user input
while :
do
    read -p "Ready to extract delay stats? (Y/N) : " -N 1 -t 120 input
    echo ""

    case $input in
        # execute test to extract delay stats from 500 approximate netlists
        [yY]*)
            cd $maindir/test/cp_delay_stats
            ./run.sh $circuit 500       
            break
            ;;

        # abort executing the test
        [nN]*)
            echo "Test aborted. Please remember to extract delay stats later."
            break
            ;;

        # continue to ask for a valid input
        *) echo "Invalid input. Please enter Y/y or N/n"
            ;;
    esac
done



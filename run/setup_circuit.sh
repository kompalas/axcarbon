#!/usr/bin/bash
# Use circuit as the first argument and an integer of bits for every input after that
# example usage: ./setup_circuit.sh mult8 8 8

set -euo pipefail
set -x

circuit=${1?"Specify the circuit as first positional argument"}
library=${2?"Specify the library as the second positional argument"}
# if inputs already exist, leave the second positional argument unset
inputs_exist=${3:-"True"}

maindir="$HOME/axcarbon"
circdir="$maindir/circuits/$circuit"

enable_safety_bits="0"
safety_bits="1"

mkdir -p $maindir/hdl
mkdir -p $maindir/sim

# get rtl description and synthesize design
cp $circdir/top.v hdl/

# check if the circuit is floating-point
is_floating_point="false"
if echo $circuit | grep -q "^fp"; then
    is_floating_point="true"
fi

# create initial inputs file, if input bitwidth is specified
if [[ ! "$inputs_exist" == "True" ]]; then
    bits_num=$(($#-2))

    safety_bits_array=()
    for ((i=0; i<$bits_num; i++)); do
        if [[ "$enable_safety_bits" == "1" ]]; then
            safety_bits_array+=($safety_bits)
        else
            safety_bits_array+=("0")
        fi
    done

    # size of input dataset
    num_inputs_optim="100000"
    num_inputs_eval="1000000"

    signed=""
    input_type="binary"
    convert_to="decimal"
    override_range=()
    fp_format=""

    # check if inputs are supposed to be signed numbers
    if grep -q "input signed" $circdir/top.v; then
        signed="--signed"
    fi

    if [ $is_floating_point == "true" ]; then
        input_type="ieee754"
        convert_to="ieee754"
        signed="--signed"

        if echo $circuit | grep -q "mac"; then
            override_range=(--override-range "-10000 10000")
        fi

        # get the input width
        if grep -q "parameter INP_WIDTH" $circdir/tb.v; then
            param="INP_WIDTH"
        elif grep -q "parameter inpwidth" $circdir/tb.v; then
            param="inpwidth"
        elif grep -q "parameter BIT_WIDTH" $circdir/tb.v; then
            param="BIT_WIDTH"
        else
            echo "Error: Could not find the output width parameter in the testbench"
            exit 1
        fi
        # get the FP format
        bits="$(grep "parameter $param" $circdir/tb.v | awk -F'=' '{gsub(";", "", $NF); print $NF*1}')"
        if [[ $bits -eq 32 ]]; then
            format="FP32"
        elif [[ $bits -eq 16 ]]; then
            format="bfloat16"
        else
            echo "Error: Unsupported bit width: $bits"
            exit 1
        fi
        fp_format="--ieee754-format $format"
    fi

    # generate inputs for optimization dataset
    python3 $maindir/src/create_inputs.py \
        --num-inputs $num_inputs_optim \
        --deterministic \
        --type $input_type \
        --separator underscore \
        --bits ${@:3:$bits_num} \
        --safety-bits ${safety_bits_array[@]} \
        --out-file sim/inputs.txt \
        $signed "${override_range[@]}"

    cp $circdir/tb.v sim/top_tb.v
    simclk="10.0"
    sed -i "/parameter PERIOD=/ c\parameter PERIOD=$simclk;" ./sim/top_tb.v

    # rtl simulation to record output
    rm -rf work_lib/
    rm -rf rtl_simv.daidir/
    sed -i "/parameter NUM_INPUTS=/ c\parameter NUM_INPUTS=$num_inputs_optim;" sim/top_tb.v
    make rtl_sim
    if grep -qi "x" sim/output.txt; then
        echo "Error: RTL simulation produced 'x' in the output. Exiting..."
        exit 1
    fi
    paste -d"_" sim/inputs.txt sim/output.txt > $circdir/inputs.txt

    # convert binary inputs to their numerical values
    python3 $maindir/src/numerical_conversion.py \
        --mode convert \
        --convert-from binary \
        --convert-to $convert_to \
        --input-file $circdir/inputs.txt \
        --output-file $circdir/inputs_${convert_to}.txt \
        --input-separator underscore \
        --output-separator underscore \
        $fp_format

    # generate inputs for evaluation
    python3 $maindir/src/create_inputs.py \
        --num-inputs $num_inputs_eval \
        --deterministic \
        --type $input_type \
        --separator underscore \
        --bits ${@:3:$bits_num} \
        --safety-bits ${safety_bits_array[@]} \
        --out-file sim/inputs.txt \
        $signed "${override_range[@]}"

    rm -rf work_lib/
    rm -rf rtl_simv.daidir/
    sed -i "/parameter NUM_INPUTS=/ c\parameter NUM_INPUTS=$num_inputs_eval;" sim/top_tb.v
    make rtl_sim
    paste -d"_" sim/inputs.txt sim/output.txt > $circdir/inputs_eval.txt

    # convert binary inputs to their numerical values
    python3 $maindir/src/numerical_conversion.py \
        --mode convert \
        --convert-from binary \
        --convert-to $convert_to \
        --input-file $circdir/inputs_eval.txt \
        --output-file $circdir/inputs_eval_${convert_to}.txt \
        --input-separator underscore \
        --output-separator underscore \
        $fp_format

fi

# get baseline measurements for the circuit
source $maindir/run/baseline_eval.sh $circuit $library

# save netlist
cp $maindir/gate/top.v $circdir/top.sv

# get delay annotations from sta delay report
delay_rpt="$maindir/reports/${top_design}_${synclk}${tunit}.delay_calc.pt.rpt"
if ! [ -f "$delay_rpt" ]; then
    echo "Perform STA with delay calculation to annotate gates. Exiting..."
    exit 1
fi
if grep -qi "error" $delay_rpt; then
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
            rm -f $circdir/gate_delay_stats.pkl
            ./run.sh $circuit 100 $library
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



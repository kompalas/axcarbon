#!/bin/bash
# set -eou pipefail
# set -x

for i in $(seq 3 8); do

    if [ $i -eq 2 ]; then
        constants=(14 19 30)
    elif [ $i -eq 3 ]; then
        constants=(94 -90 93)
    elif [ $i -eq 4 ]; then
        constants=(-90 -106 108)
    elif [ $i -eq 5 ]; then
        constants=(106 102 -102)
    elif [ $i -eq 6 ]; then
        constants=(-86 -90 -106)
    elif [ $i -eq 7 ]; then
        constants=(-86 -106 -90)
    elif [ $i -eq 8 ]; then
        constants=(-106 -86 -90)
    fi

    for j in $(seq 1 3); do

        circdir="circuits/mult_int${i}b_egfet_${j}"

        constant=${constants[(($j-1))]}
        sed -i "/parameter constant=/ c\parameter constant=$constant\;" $circdir/top.v
        sed -i "/parameter outwidth=/ c\parameter outwidth=width+8;" $circdir/top.v
        sed -i "/parameter OUT_WIDTH=/ c\parameter OUT_WIDTH=BIT_WIDTH+8;" $circdir/tb.v
        sed -i '/assign out =/ c\assign out = inp * \$signed(constant);' hdl/top.v

        ./run/setup_circuit.sh mult_int${i}b_egfet_${j} egfet null $i
        ./run/ga.sh mult_int${i}b_egfet_${j} egfet
        logdir="$(find logs/ -type d -name "*ga_mult_int${i}b_egfet_${j}*" | sort -rV | head -n 1)"
        ./run/get_results.sh $logdir egfet
        cp -r $logdir saved_logs/egfet/

        # echo ga_mult_int${i}b_egfet_${j}
        # ls -la $logdir/netlists/ | wc -l
        # tail $logdir/eval_results.csv
        # echo -e "\n"

    done

done
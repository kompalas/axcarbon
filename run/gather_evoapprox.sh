# !/bin/bash
set -eou pipefail

circuits=("mul8u_1JJQ" "mul8u_ZB3" "mul8u_4X5" "mul8u_DG8" "mul8u_GTR" "mul8u_L93" "mul8u_18UH" "mul8u_17MJ" "add8u_1HG" "add16u_1A5")
circuits+=("add8u_1HG" "add8u_6PT" "add8u_6P8" "add8u_6SM" "add8u_6S4" "add8u_6R6" "add8u_0TP" "add8u_00M" "add8u_02Y")
circuits+=("add16u_1A5" "add16u_0GN" "add16u_126" "add16u_0P8" "add16u_0HE" "add16u_07T" "add16u_0KU" "add16u_0SL" "add16u_067")

maindir="$HOME/axcarbon"
resfile="$maindir/results/evoapprox.csv"

for circ_id in ${!circuits[@]}; do
    circuit=${circuits[$circ_id]}
    echo "Circuit: $circuit"
    circdir="$maindir/circuits/$circuit"
    circ_resfile="$circdir/results.csv"

    if ! [ -f "$circ_resfile" ]; then
        echo "Results file for circuit $circuit does not exist"
        continue
    fi

    if [ $circ_id -eq 0 ]; then
        cat $circ_resfile > $resfile
    else
        sed -n '2,$ p' $circ_resfile >> $resfile
    fi
done

resfile_tables="$maindir/results/evoapprox_per_metric.csv"
python3 $maindir/src/misc/evoapprox.py \
    --mode gather \
    --results $resfile \
    --output $resfile_tables
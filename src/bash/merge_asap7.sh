#!/bin/bash
# Merge the extracted files into a single lib file

maindir="$HOME/axcarbon"
libdir="$maindir/libs/asap7/7nm/libfiles"
merged_lib="$maindir/libs/asap7/7nm/asap7_all.lib"
libfiles=($(find $libdir -name "*.lib"))

counter=0
for libfile in "${libfiles[@]}"; do

    # if echo $libfile | grep -q -e "_SIMPLE" -e "_SEQ" -e "_AO" -e "_OA"; then
    #     echo "Skipping $libfile"
    #     continue
    # fi
    counter=$((counter+1))
    echo "Processing $libfile"

    if [[ $counter -eq 1 ]]; then
        # replace the library definition with 'asap7' and remove last bracket
        sed -e '/^\s*library (/ c\library (asap7) {' -e '/^}/ d' $libfile > $merged_lib
    else
        # remove the initial comments and remove last bracket
        # sed -e '/^[/][*]/,/[*][/]/ d' -e '/^\s*library (/ d' -e '/^}/ d' $extracted_file >> $repo_dir/asap7_merged.lib
        awk 'BEGIN {to_print=0} /cell [(]/ {to_print=1} /^}/ {to_print=0} {if(to_print==1) print}' $libfile >> $merged_lib
    fi

done
if [[ $counter -gt 0 ]]; then
    # close the opening bracket
    echo "}" >> $merged_lib
fi
echo "Merged $counter files into $merged_lib"

# remove the cells that cause errors
cell_patterns_to_remove=("NOR3" "NOR4" "NOR5")                                                  # from the "SEQ" library
cell_patterns_to_remove+=("SDFH" "SDFL" "ICG" "DLL" "DHL" "DFFHQ" "DFFLQ" "DFFARHQN" "DFFAS")   # from the "SIMPLE" library
for pattern in "${cell_patterns_to_remove[@]}"; do
    awk -v thiscell=$pattern '
BEGIN {
    to_print=1
}
/^\s*cell [(]/ {
    to_print=1
}
$0 ~ thiscell {
    to_print=0
} 
{
    if(to_print==1) print
}' $merged_lib > tmp && mv tmp $merged_lib
done

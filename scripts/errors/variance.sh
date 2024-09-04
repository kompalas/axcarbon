#!/bin/bash

paste -d'\t' $1 $2 | perl -pe 's/\b[01]+\b/oct "0b" . $&/ge' | awk '
BEGIN {
sum = 0;
sum_squared = 0;
count = 0;
} 
{
IGNORECASE = 1;
if ($1 ~ /x/ || $2 ~ /x/) next;
count++;
diff = $1 - $2;
if (diff < 0) {
        diff = -diff;
}
sum += diff;
sum_squared += diff * diff;
} 
END {
if (count > 0) {
        mean = sum / count;
        variance = (sum_squared / count) - (mean * mean);
        printf "%.3e\n", variance;
} else {
        print "0.000e+00";
}
}'
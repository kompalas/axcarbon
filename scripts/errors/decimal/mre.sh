#!/bin/bash

paste -d'\t' $1 $2 | awk '
BEGIN {
mre = 0;
} {
IGNORECASE = 1;
if ($1 ~ /x/ || $2 ~ /x/) next;
if ($1 != $2) {
        diff = $1 - $2;
        if (diff < 0)
                diff = -diff;
        if ($1 < 0)
                mre += diff/(-$1);
        else if ($1 > 0)
                mre += diff/$1;
}
}
END {
printf "%.3e\n", mre/NR
}'
#!/bin/bash

paste -d'\t' $1 $2 | awk '
BEGIN {
min_error = 10^5;
} {
IGNORECASE = 1;
if ($1 ~ /x/ || $2 ~ /x/) next;
if ($1 != $2) {
        diff = $1 - $2;
        if (diff < 0)
                diff = -diff;
        if (diff < min_error)
                min_error = diff;
}
else {
        min_error = 0;
}
}
END {
printf "%.3e\n", min_error
}'
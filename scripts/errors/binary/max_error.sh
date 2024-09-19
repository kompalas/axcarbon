#!/bin/bash

paste -d'\t' $1 $2 | perl -pe 's/\b[01]+\b/oct "0b" . $&/ge' | awk '
BEGIN {
max_error = 0;
} {
IGNORECASE = 1;
if ($1 ~ /x/ || $2 ~ /x/) next;
if ($1 != $2) {
        diff = $1 - $2; 
        if (diff < 0)
                diff = -diff;
        if (diff > max_error)
                max_error = diff;
}
}
END {
printf "%.3e\n", max_error
}'
#!/bin/bash

paste -d'\t' $1 $2 | awk '
BEGIN {
errors = 0;
} {
IGNORECASE = 1;
if ($1 ~ /x/ || $2 ~ /x/) next;
if ($1 != $2) {
        errors++; 
}
}
END {
printf "%.3e\n", errors/NR
}'
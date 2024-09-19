#!/bin/bash

paste -d'\t' $1 $2  | perl -pe 's/\b[01]+\b/oct "0b" . $&/ge' | awk '
BEGIN {
sum=0;
}
{
IGNORECASE = 1;
if ($1 ~ /x/ || $2 ~ /x/) next;
diff=($1-$2);
if (diff<0)
        diff=-1*diff;
sum=sum+diff;
}
END {
med=sum/NR; 
printf "%.3e\n", med
}'
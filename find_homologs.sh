#!/usr/bin/env bash
query=$1
subject=$2
out=$3
tblastn -query $query -subject $subject -outfmt '6 std qlen' \
| awk '$3 > 30 && $4 >= 0.9 * $13' > $out
| wc -l $out
query="$1"
subject="$2"
out="$3"

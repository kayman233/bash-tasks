#!/bin/bash

col_num=$(head -n 1 $1 | awk -F ';' {'{for(i=1;i<=NF;i++)if($i==$2)print i}'})
cat $1 | awk 'NF != 1' | awk -F ';' '{print $'"$col_num"'}' > list.txt
cat list.txt | parallel -j $4 wget --directory-prefix="$3"

rm list.txt

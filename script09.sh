#!/bin/bash

COUNT_R=0;
COUNT_D=0;
COUNT_H=0;
TOTAL=0;

for file in `ls -l $1 | awk '{print substr($0,0,1)}'`; do
 
        #Count regular files
        if [[ "-" == "$file" ]]; then COUNT_R=$((COUNT_R+1));

        #Count directories
        elif [[ "d" == "$file" ]]; then COUNT_D=$((COUNT_D+1));

        #Count sumbolic links
        elif [[ "l" == "$file" ]]; then COUNT_H=$((COUNT_H+1)); fi
done
TOTAL=$((COUNT_R+COUNT_D+COUNT_H))

echo $TOTAL files. $COUNT_R regular files, $COUNT_D directories, and $COUNT_H links.

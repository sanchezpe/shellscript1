#!/bin/bash
for file in $@; do
	if [[ -r $file && -w $file && -x $file ]] 
then count=$((count+1)) 
fi
done
echo Of the $# files entered, $count were r/w/x

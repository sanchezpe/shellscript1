#!/bin/bash

#verify empty input
if [ $# -eq 0 ]; then echo Illegal input;
exit 1;
fi

#sum file sizes
for file in $@; do
	temp=`du $file | awk '{print $1}'`
	sum=$((sum+temp));
done

#average size
avg=$((sum/$#));

echo The space size of $# files is $sum. Average size of each file $avg.

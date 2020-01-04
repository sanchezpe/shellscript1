#!/bin/bash
if [ $# -eq 0 ]; then echo Illegal input;
exit 1
fi

MIN=$1;
MAX=$1;
for VALUE in $@; do
        if [ $VALUE -lt $MIN ]; then MIN=$VALUE; fi
        if [ $VALUE -gt $MAX ]; then MAX=$VALUE; fi
done
echo MIN: $MIN  MAX: $MAX

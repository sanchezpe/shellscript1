#!/bin/bash
read -p "Enter the number you seek   " NUMA NUMB
for VALUE in $@; do
	if [[ $VALUE -gt $NUMA && $VALUE -lt $NUMB ]]; then COUNT=$((COUNT+1)); fi
done
echo $COUNT

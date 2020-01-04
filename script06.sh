#!/bin/bash
read -p "Enter the number you seek   " NUM
for VALUE in $@; do
	if [ $VALUE -eq $NUM ]; then COUNT=$((COUNT+1)); fi
done
echo $NUM appeared $COUNT times

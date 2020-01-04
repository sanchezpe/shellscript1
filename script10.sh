#!/bin/bash
read -p "Enter string index   " SINDEX
for PHRASE in $@; do
	echo $PHRASE `expr index "$PHRASE" $SINDEX`
done

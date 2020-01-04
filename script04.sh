#!/bin/bash
if [ $# -ne 2 ]; then echo Illegal input
elif [ $1 -gt $2 ]; then echo $1 is greater
elif [ $1 -eq $2 ]; then echo $1 is equal to $2
else echo $2 is greater
fi

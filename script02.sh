#!/bin/bash
NAME=$1
USERNAME=$2
echo Hello $NAME, username $USERNAME, your home directory contents and size:
echo $HOME `du -sH ~`

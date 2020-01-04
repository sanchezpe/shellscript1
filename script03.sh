#!/bin/bash
echo What is your name?
read NAME
echo What is your username?
read USERNAME
echo Hello $NAME, your home directory contents and size:
echo $HOME `du -sH ~`

#!/bin/bash
echo You are $USER >> info.txt
echo Your home directory is $HOME >> info.txt
echo Your home directory consists of `du -sH ~` >> info.txt

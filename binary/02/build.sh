#!/usr/bin/env sh

######################################################################
# @author      : dylan (dylan@skynet)
# @file        : build
# @created     : Sunday Jul 15, 2018 01:06:32 IST
#
# @description : Build file for binary challenges
######################################################################

gcc -m32 -o main32 main.c -static -fno-PIE -fno-stack-protector
gcc -o main64 main.c -static -fno-PIE -fno-stack-protector
cp main.c source.c





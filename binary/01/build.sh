#!/usr/bin/env sh

######################################################################
# @author      : dylan (dylan@skynet)
# @file        : build
# @created     : Sunday Jul 15, 2018 01:06:32 IST
#
# @description : Build file for binary challenges
######################################################################

yasm -f elf32 main.asm
gcc -Wl,--build-id=sha1 -static -m32 -o main32 main.o
cp main.asm source.asm





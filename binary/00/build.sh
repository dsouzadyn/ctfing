#!/usr/bin/env sh

######################################################################
# @author      : dylan (dylan@skynet)
# @file        : build
# @created     : Sunday Jul 15, 2018 01:06:32 IST
#
# @description : Build file for binary challenges
######################################################################

yasm -f elf32 main.asm
ld -m elf_i386 -o main32 main.o --build-id
yasm -f elf64 main.asm
ld -o main64 main.o --build-id
cp main.asm source.asm





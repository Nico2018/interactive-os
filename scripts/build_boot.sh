#!/bin/bash
rm ../boot.bin
nasm -f bin -o ../boot.bin  ../boot.asm
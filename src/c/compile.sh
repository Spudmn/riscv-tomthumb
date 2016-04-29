#!/bin/bash
COMPILE="riscv32-unknown-elf-gcc -static -nostdlib -O2 -Tlink.ld"
DUMP="riscv32-unknown-elf-objdump"
COPY="riscv32-unknown-elf-objcopy"

$COMPILE -o $1 $1.c && $DUMP -d $1 && $COPY -O binary $1 $1.bin
#!/bin/bash
gcc main.c
./a.out
n=$(echo "$?")
echo "Bash says: the number was entered is ${n}"

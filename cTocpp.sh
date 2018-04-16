#!/bin/bash

for file in *.c
do
mv "$file" "${file%.c}.cpp"  #  using  move command to rename
done


#!/bin/bash

if [ $# -gt 1 ]
then 
mv $1 $2
else 
for x in *.doc
do
name="$(basename "$x" .doc).txt"
mv $x $name
done 
fi

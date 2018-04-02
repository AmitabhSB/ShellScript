#!/bin/bash

awk '{a[i++]=$1} END {for (j=i-1; j>=0;) print a[j--] } ' $1 > $1_rev 

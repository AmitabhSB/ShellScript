#!/bin/bash

#find . -type f -name '*' -exec du -ch {} +

ls -l | awk ' BEGIN {x=0} { x=x+$5 } END { print "bytes:" x }'

#ls -l | grep -P "$1" | awk '{ x += $5 } END { print "total bytes:" x }'

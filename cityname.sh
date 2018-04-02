#!/bin/bash

awk ' {printf "I would like to visit " ; print } ' $1 > my_$1

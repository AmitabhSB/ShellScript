#!/bin/bash
#Q5-. Shell Script to find whether given number is Prime or not. 

clear
echo " Enter a number to check if it is prime or not "
read NUM

i=2
sqroot=$(echo "sqrt(${NUM})" | bc) 
while [ $i -le  $sqroot ]
do
  if [ `expr $NUM % $i` -eq 0 ]
  then
      echo "$NUM is not a prime number"
      echo "Since it is divisible by $i"
      exit
  fi
  i=`expr $i + 1`
done

echo "$NUM is a prime number "

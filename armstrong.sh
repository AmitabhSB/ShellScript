#!/bin/bash
clear

#Q3-  Shell Script to find Armstrong number between 100 to 999.
# Armstrong number is a number which is equal to the sum of  digit to their own digitsto the power of number of digit.
#example:
#153 = 1³ + 5³ + 3³

echo "Armstrong Number between 100-999"
for num in {100..999} #loop to iterate number from 100 - 999
do
	temp=$num # copy of the variable num
	sum=0	# initialize sum with 0
	while [ $num -ne 0 ] # number not equals to zero
	do
		rem=$((num % 10))    
		sum=$((sum + rem*rem*rem))	
		num=$((num/10))
	done
	if ((temp==sum)) ; then
		echo " $temp "
	fi
done

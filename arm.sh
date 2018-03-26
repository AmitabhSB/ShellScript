#!/bin/bash
clear

#Shell Script to find Armstrong number between $START  to $END.
# Armstrong number is a number which is equal to the sum of  digit to their own digitsto the power of number of digit.
#example:
#153 = 1³ + 5³ + 3³

echo "Enter limit 1"
read START
echo "Enter limit 2"
read END

echo "Armstrong Number between $START - $END"
while [ $START -le $END ] 
do
	num=$START
	temp=$num	# copy of the variable num
	pow=${#num}	# Number of digits in num
	sum=0	# initialize sum with 0
	ret=1
	while [ $num -ne 0 ] # number not equals to zero
	do
		rem=$((num % 10))    
		while [ $pow -ne 0 ]
		do
			ret=$((ret*rem))
			pow=$((pow - 1))
		done
		sum=$((sum + ret))
		num=$((num/10))
	done
	if ((temp==sum)) ; then
		echo " $temp "
	fi
	let START++
done

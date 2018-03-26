#!/bin/bash

# Q4-. Shell Script to check whether a given string is Palindrome or not. 

clear

echo "Enter a string to check palindrome"
read str
# reverse the input string and save in reversestr
for i in $(seq 0 ${#str}) ; do	#
	reversestr=${str:$i:1}$reversestr
done

echo "The given string is " $str
echo "Its reverse is " $reversestr

#compare both strings 
if [ "$str" = "$reversestr" ]; then
	echo "It is a palindrome."
else
	echo "It is not a palindrome."
fi

#!/bin/bash -x
# @Purpose : Print a Table of 2 that are less than or equal to 2^n till 256  is reached.
# @Author  : Roshan Balkrushna Shinde
# @Since : 13-03-2020 / Friday

# Take Command Line Argument as n
# print 2^n

number=$1
output=1
if (( $number < 1 || $number > 8 ))
then
	echo "out off range"
else

	while [[ $count -ne 8 ]]
	do
	echo "Table of 2^n upto $number is" 
	output=$(( $output*2 ))
	echo $ouput
	count=$((count+1))
	done
fi

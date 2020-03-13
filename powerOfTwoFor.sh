#!/bin/bash -x
# @Purpose : Print a Table of 2 that are less than or equal to 2^n Using For Loop
# @Author  : Roshan Balkrushna Shinde
# @Since : 13-03-2020 / Friday

# Take Command Line Argument as n
# print 2^n

number=$1

echo "Table of 2^n upto $number is"

for (( i=1; i<=number; i++ ))
do
	output=`expr " 2 ^ $i " | bc`
	echo $output
done

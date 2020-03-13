#!/bin/bash -x
# @Purpose : Program that takes a input and determines prime number or not Using for loop
# @Author  : Roshan Balkrushna Shinde
# @Since : 13-03-2020 / Friday

read -p "Enter Number To Check Prime or Not " number

count=0
for (( i=2; i<=$number/2; i++ ))
do
	if [[ $number%$i -eq 0 ]]
	then
		count=$(($count+1))
	fi
done
if [[ $count -eq 0 ]]
then
	echo $number is Prime Number
else
	echo $number is not Prime Number
fi



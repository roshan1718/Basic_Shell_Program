#!/bin/bash -x
# @Purpose : Write a program to compute factors of a number n using  prime factorization method
# @Author  : Roshan Balkrushna Shinde
# @Since : 13-03-2020 / Friday

read -p "Enter Number To Find Factors " number

for (( i=2; i<=$number; i++ ))
do
	for (( j=$i;($number%$j)==0; j=$i))
	do
		if [[ $(( $number%$j )) -eq 0 ]]
		then
			echo $i
		fi
	number=$(($number/$j))
	done
done

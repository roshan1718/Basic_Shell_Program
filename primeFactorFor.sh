#!/bin/bash -x
# @Purpose : Write a program to compute factors of a number n using  prime factorization method
# @Author  : Roshan Balkrushna Shinde
# @Since : 13-03-2020 / Friday

read -p "Enter Number To Find Factors " number

for (( index=1; index<=$number; index++ ))
do
	if [[ $(($number%$index)) -eq 0 ]]
	then
			count=0
			for (( j=1; j<=$index; j++ ))
			do
				if [[ $(( $index% $j )) -eq 0 ]]
				then
					count=$(($count+1))
				fi
			done
			if [[ $count -eq 2 ]]
			then
				echo $index
			fi
	fi
done

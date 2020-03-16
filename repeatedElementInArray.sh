#!/bin/bash -x

# @ Purpose : Find Repeated Digits In 0-100
# @ Author : Roshan Balkrushna Shinde
# @ Since : 16-03-2020 

function getNumbers()
{
	c=0
	for (( i=0; i<100; i++ ))
	do
		checkRepeated $i
	done
}

function checkRepeated()
{
	reverse=0
	number=$1
	while [[ $number -ne 0 ]]
	do
		reminder=$(($number%10 ))
		reverse=$(($reverse*10+$reminder))
		number=$(($number/10))
	done
	if [[ $reverse -eq $1 && ${#reverse} -eq 2 ]]
	then
		array[c++]=$reverse
			
	fi
}
getNumbers
echo "Repeated element in array is :: "${array[@]}

#!/bin/bash -x

# @ Purpose : Find Prime Factors Of Given Number Using Array
# @ Author : Roshan Balkrushna Shinde
# @ Since : 16-03-2020 

c=0
read -p "Enter Number To Find Factors " number

function checkPrimeFactors()
{
for (( i=2; i<=$number; i++ ))
do
	for (( j=$i; ($number%$j)==0; j=$i ))
	do
		if [[ $(( $number% $j )) -eq 0 ]]
		then
			array[c++]=$i
		fi
		
		number=$(($number/$j))
	
	done
done
}
checkPrimeFactors
echo ${array[@]}

#!/bin/bash -x
# perform arithmatic operation
# understand the precedence of the operation
read -p "Enter the value for a::" a
read -p "Enter the value for b::" b
read -p "Enter the value for c::" c

number1=`expr $(( $a + $b * $c )) | bc `	
number2=`expr $(( $a % $b + $c )) | bc `
number3=`expr $(( $c + $a / $b )) | bc `
number4=`expr $(( $a * $b + $c )) | bc `

if [[ $number1 -gt $number2 && $number1 -gt $number3 && $number1 -gt $number4  ]]
then 
	echo "number1 is Max number ::"$number1 

elif [[ $number2 -gt $number1 && $number2 -gt $number3 && $number2 -gt $number4 ]]
then
	echo "number2 is Max number :: "$number2

elif [[ $number3 -gt $number1 && $number3 -gt $number2 && $number3 > $number4 ]]
then	
	echo "number3 is Max number :: "$number3
else
	echo "number4 is Maximum number ::"$number4
fi

if [[ $number1 -lt $number2 && $number1 -lt $number3 && $number1 -lt $number4 ]]
then 
	echo "number1 is Minimun number :: "$number1

elif [[ $number2 -lt $number1 && $number2 -lt $number3 && $number2 -lt $number4 ]]
then	echo "number2 is Minimun number :: "$number2

elif [[ $number3 -lt $number1 && $number3 -lt $number2 && $number3 -lt $number4 ]]
then	
	echo "number3 is Minimun number :: "$number3
else
	echo "number4 is minimum number ::"$number4
fi


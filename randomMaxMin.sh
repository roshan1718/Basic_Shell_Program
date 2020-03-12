#!/bin/bash -x

number1=$(( RANDOM % 900 + 100 ))
number2=$(( RANDOM % 900 + 100 ))
number3=$(( RANDOM % 900 + 100 ))
number4=$(( RANDOM % 900 + 100 ))
number5=$(( RANDOM % 900 + 100 ))

if [[ number1 -gt number2 && number1 -gt number3 && number1 -gt number4 && number1 -gt number5 ]]
then 
	echo "number1 is Max number :: " $number1

elif [[ number2 -gt number1 && number2 -gt number3 && number2 -gt number4 && number2 -gt number5 ]]
then
	echo "number2 is Max number :: " $number2

elif [[ number3 -gt number1 && number3 -gt number2 && number3 -gt number4 && number3 -gt number5 ]]
then	
	echo "number3 is Max number :: " $number3


elif [[ number4 -gt number1 && number4 -gt number2 && number4 -gt number3 && number4 -gt number5 ]]
then
	echo "number4 is Max number :: " $number4

else

	echo "number5 is Max number :: " $number5

fi

if [[ number1 -lt number2 && number1 -lt number3 && number1 -lt number4 && number1 -lt number5 ]]
then 
	echo "number1 is Minimun number :: " $number1

elif [[ number2 -lt number1 && number2 -lt number3 && number2 -lt number4 && number2 -lt number5 ]]
then	echo "number2 is Minimun number :: " $number2

elif [[ number3 -lt number1 && number3 -lt number2 && number3 -lt number4 && number3 -lt number5 ]]
then	
	echo "number3 is Minimun number :: " $number3


elif [[ number4 -lt number1 && number4 -lt number2 && number4 -lt number3 && number4 -lt number5 ]]
then
	echo "number4 is Minimun number :: " $number4

else

	echo "number5 is Minimun number :: " $number5

fi

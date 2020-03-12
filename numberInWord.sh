#!/bin/bash -x

read -p "Enter the number ::" number
if [ $number -eq 0 ]
then
	echo "ZERO"
elif [ $number -eq 1 ]
then
	echo "ONE"
elif [ $number -eq 2 ]
then
   echo "TWO"
elif [ $number -eq 3 ]
then
   echo "THREE"
elif [ $number -eq 4 ]
then
   echo "FOUR"
elif [ $number -eq 5 ]
then
   echo "FIVE"
elif [ $number -eq 6 ]
then
   echo "SIX"
elif [ $number -eq 7 ]
then
   echo "SEVEN"
elif [ $number -eq 8 ]
then
   echo "EIGHT"
elif [ $number -eq 9 ]
then
   echo "NINE"
elif [ $number -gt 9 ]
then
   echo "invalid inpute :: Enter the Single Digit"
fi


#!/bin/bash -x

read -p "Enter the number ::" number
if [ $number -eq 1 ]
then
	echo "MONDAY"
elif [ $number -eq 2 ]
then
   echo "THUSDAY"
elif [ $number -eq 3 ]
then
   echo "WEDNEDAY"
elif [ $number -eq 4 ]
then
   echo "THURSDAY"
elif [ $number -eq 5 ]
then
   echo "FRIDAY"
elif [ $number -eq 6 ]
then
   echo "SATURDAY"
elif [ $number -eq 7 ]
then
   echo "SUNDAY"
elif [ $number -gt 7 ]
then
   echo "invalid inpute :: Enter the Single Digit"
fi


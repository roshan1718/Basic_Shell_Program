#!/bin/bash -x
read -p "Enter the number::" number

case $number in
		1)
			printf "MONDAY" ;;
		2)
			printf "THUSDAY" ;;
		3)
			printf "WEDNEDAY" ;;
		4)
      	printf "THURSDAY" ;;
		5)
      	printf "FRIDAY" ;;
    	6)
      	printf "SATURDAY" ;;
    	7)
      	printf "SUNDAY" ;;
		*)
			printf "Invalid Input" ;;
esac

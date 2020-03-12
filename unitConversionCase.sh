#!/bin/bash -x
printf "1.Convert Feet To Inch \n"
printf "2.Convert Feet To Meter \n"
printf "3.Convert Inch To Feet \n"
printf "4.Convert Meter To Feet \n"
printf "Enter Your Choice"
read choice

case $choice in
		1)
			printf "Enter Feets "
			read feet
			inch=$(( $feet * 12 ))
			printf "$feet ft = $inch in" ;;
		2)
			printf "Enter Feets "
			read feet
			meter=` expr " scale=4; $feet * 0.3048 " | bc`
			printf "$feet ft = $meter mtrs " ;;
		3)
			printf "Enter Inch "
			read inch
			feet=` expr "scale=4; $inch / 12 " | bc`
			printf "$inch in = $feet ft" ;;
		4)
			printf "Enter Meters"
			read meter
			feet=`expr "scale=4; $meter / 0.3048 " | bc`
			printf "$meter mtr = $feet ft "	;;
		*)
			printf "Invalid Choice";;
esac

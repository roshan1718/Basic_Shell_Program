#!/bin/bash -x

# @ Purpose : Find Number of peoples who born in same month using dictionary
# @ Author : Roshan Balkrushna Shinde
# @ Since : 16-03-2020 

echo "Random Birth Month"
for (( people=1; people<=50; people++ ))
do
	month=$((RANDOM % 12 + 1))
	birthDay[$month]="${birthDay[$month]} $people"
done

for (( month=1; month<=12; month++ ))
do
	case $month in
		"1")
			echo " Birthday in same month [ Jan ]:: ${birthDay[month]}" ;;
		
		"2")
			echo " Birthday in same month [ Feb ]:: ${birthDay[month]}" ;;

		"3")
			echo " Birthday in same month [ Mar ]:: ${birthDay[month]}" ;;

		"4")
			echo " Birthday in same month [ Apr ]:: ${birthDay[month]}" ;;

		"5")
			echo " Birthday in same month [ May ]:: ${birthDay[month]}" ;;

		"6")
			echo " Birthday in same month [ Jun ]:: ${birthDay[month]}" ;;

		"7")
			echo " Birthday in same month [ Jul ]:: ${birthDay[month]}" ;;

		"8")
			echo " Birthday in same month [ Aug ]:: ${birthDay[month]}" ;;

		"9")
			echo " Birthday in same month [ Sep ]:: ${birthDay[month]}" ;;

		"10")
			echo " Birthday in same month [ Oct ]:: ${birthDay[month]}" ;;

		"11")
			echo " Birthday in same month [ Nov ]:: ${birthDay[month]}" ;;

		*)
			echo " Birthday in same month [ Dec ]:: ${birthDay[month]}" ;;
	esac
done


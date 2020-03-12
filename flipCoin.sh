#!/bin/bash -x

variable=$(( RANDOM % 2 ))

if (( $variable == 0 ))
then
	echo "Head"
else
	echo "Tail"
fi

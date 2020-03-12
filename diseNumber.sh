#!/bin/sh
# used random function to get number between 1 to 6

random=$(( $RANDOM % 6 + 1 ))
echo "$random"

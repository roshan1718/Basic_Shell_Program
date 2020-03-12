#!/bin/bash -x

echo " Unit conversion "
inch=42
meter=0.3048

feetconversion=`expr " scale=3; ( $inch /12 )" | bc`
echo " Unitconversion of 42 in =" $feetconversion "feet"
feet1=`echo "scale=4; 60 * $meter " | bc`
feet2=`echo "scale=4; 40 * $meter " | bc`
echo "Area Conversion of 60*40 feets = $feet1 * $feet2 sq.mtrs"

area=`echo "scale=4; ($feet1 * $feet2) " | bc `
acres=`expr "scale=4; $area * 25 * 0.000247 " | bc`
echo " Calculate area of 25 such plot in acres is ::" $acres

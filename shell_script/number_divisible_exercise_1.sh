#!/bin/bash


################################
# Author: Vivek Sangwan
# Date: 21/01/24
#
# Version: v1
#########################


# If number is divisible by 5


echo "Enter a number"
read number

if [ $(( $number % 5 )) -eq 0 ] ; then
   echo "Your number is divisible by 5"
else
   echo "Your number is not divisible by 5"
fi

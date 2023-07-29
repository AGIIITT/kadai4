#!/bin/bash


n1=$1
n2=$2

if [ "$#" -lt 2 ]; 
then
	echo "Need 2 inputs"
	exit 1
fi

if [ "$#" -gt 2 ]; 
then
	echo "Warning: Inputs after the first 2 inputs will be ignored"
fi

if [[ $n1 =~ ^-?[0-9]+$ ]];
then
	:
else
	echo 'Input must be an integer'
	exit 1
fi

if [[ $n2 =~ ^-?[0-9]+$ ]];
then
	:
else
	echo 'Input must be an integer'
	exit 1
fi

while [ $n1 -gt -0 -a $n2 -gt 0 ]; do
	if [ $n1 -gt $n2 ]; 
	then
		n1=$(( $n1 % $n2 ))
	else
		n2=$(( $n2 % $n1 ))
	fi
done


if [ $n1 -gt $n2 ]; 
then
	echo $n1
else
	echo $n2
fi

exit 0
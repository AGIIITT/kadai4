#!/bin/bash


n1=$1
n2=$2


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
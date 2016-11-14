#!/bin/bash

#Luisa Aimoli 10169687
#Outputs numbers whose sum of digits is 7 in successive additions, meaning it is a "lucky number"

for number in {1000..10000};
do
	int=$number
	digit=0
	sum=0

	while [ $number -gt 9 ] #otherwise no need to sum digits
	do
		sum=0
		while [ $number -gt 0 ] #while there are still digits to sum
		do
			digit=$(( $number % 10 )) #get remainder
			number=$(( $number / 10 )) #get next digit
			sum=$(( $sum + $digit )) #calculate sum of digit	
		done
		number=$sum #for recursion
	done
	
	if [[ $sum -eq 7 ]]
	then
		echo "$int is a lucky number"
	fi

done

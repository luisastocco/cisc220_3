#!/bin/bash

#Luisa Aimoli 10169687
#Outputs numbers whose sum of digits is 7 in successive additions, meaning it is a "lucky number"

for number in {1000..1249};
do
	int=$number
	digit=0
	sum=0
	sum2=0

	while [ $number -gt 9 ] #checks if input is greater than 0
	do
		sum=0
		while [ $number -gt 0 ]
		do
			digit=$(( $number % 10 )) #get remainder
			number=$(( $number / 10 )) #get next digit
			sum=$(( $sum + $digit )) #calculate sum of digit	
		done
		number=$sum
	done
	
	if [[ $sum -eq 7 ]]
	then
		echo "$int is a lucky number"
	fi

done

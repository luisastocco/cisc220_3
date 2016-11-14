#!/bin/bash

#Luisa Aimoli 10169687
#Braedan Robinson 10188414
#Checks and validates password
#Takes user's hidden inpuy and checks for the following 3 conditions:
#Minimum length of 8 char
#Contains at least one numeric character
#Contains at least one of the following: @, #, $, %, &, *, +, -, =
#Ouputs weak if only 1/3 conditions are met, moderate if 2/3, and strong if 3/3

count=0 #keep track of conditions met
read -s -p "Enter password: " password #reads user input silently

if [ ${#password} -ge 8 ]; then #legth of password meets mininum
	((count++)) 
else
	echo -e "\nIt must be at least 8-characters long!"
fi
if echo "$password" | grep -q '[0-9]' ; then #password contains numeric values
	((count++))
else
	echo -e "\nIt must contain at least one numeric value!"
fi
if echo "$password" | grep -q '[^a-z0-9]' ; then #password contains special characters
	((count++))
else
	echo -e "\nIt must contain at least one of the following: @ # $ % & * + - ="
fi

if [ $count -le 1 ] ; then
	echo "WEAK PASSWORD"
elif [ $count -eq 2 ] ; then
	echo "MODERATE PASSWORD"
elif [ $count -eq 3 ] ; then
	echo "STRONG PASSWORD"
fi

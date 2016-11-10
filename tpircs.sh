#!/bin/bash

#Luisa Aimoli 10169687
#Reads a number of words from users
#Use read command
#Store them in an array
#Reverse letters of each word

echo "Insert a list of words: "
read -a list

index=0
newlist=()

for word in ${list[@]} ; do
	reverse=$(echo "$word" | rev)
	printf "%s " $reverse
done

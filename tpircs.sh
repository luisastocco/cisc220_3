#!/bin/bash

#Luisa Aimoli 10169687
#Reads a number of words from users
#Use read command
#Store them in an array
#Reverse letters of each word

echo "Insert a list of words: "
read -a list #reads input

for word in ${list[@]} ; do #iterates over input
	reverse=$(echo "$word" | rev) #rev command reverses string
	printf "%s " $reverse #prints reverse as a string
done

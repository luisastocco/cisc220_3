#!/bin/bash

#Luisa Aimoli 10169687
#joins two tables using a relationship table
#prints out student name and course name
#sort output by student name, then course name

cat students_courses.txt > final.txt #copy file content to final.txt

while read line #reads the file per line
do
  first=$(echo $line | awk '{print $1}') #get studentID
  second=$(echo $line | awk '{print $2}') #get studentName
  sed -i "s/$first/$second/" final.txt #replaces match of ID for name
done < students.txt

while read line #reads the file per line
do
  first=$(echo $line | awk '{print $1}') #get courseID
  second=$(echo $line | awk '{print $2}') #get courseName
  sed -i "s/\<$first\>/$second/" final.txt #replaces exact match of ID for name
done < courses.txt

tail -10 final.txt | sort #sorts student names
#tail -10 final.txt | sort -k2 #sorts course names #couldn't figure out how to sort it without unsorting the students

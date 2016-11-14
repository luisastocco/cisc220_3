#!/bin/bash

#Luisa Aimoli 10169687
#Braedan Robinson 10188414
#joins two tables using a relationship table
#prints out student name and course name
#sort output by student name, then course name

cat student_course.txt > final.txt #copy file content to final.txt
i=0
while read -r line || [[ -n $line ]]; do #reads the file per line
  first=$(echo $line | awk '{print $1}') #get studentID
  second=$(echo $line | awk '{print $2}') #get studentName
  sed -i "s/$first/$second/" final.txt #replaces match of ID for name
done < student.txt

while read -r line || [[ -n $line ]]; do #reads the file per line
  first=$(echo $line | awk '{print $1}') #get courseID
  second=$(echo $line | awk '{print $2}') #get courseName
  sed -i "s/\<$first\>/$second/" final.txt #replaces exact match of ID for name
done < course.txt

tail -10 final.txt | sort #sorts student names by name and course number

#!/bin/bash

#joins two tables using a relationship table
#prints out student name and course name
#sort output by student name, then course name

declare -A COURSES
declare -A STUDENTS
count=1
cat students_courses.txt > final.txt

while read line #reads the file per line
do
  first=$(echo $line | awk '{print $1}') #get studentID
  second=$(echo $line | awk '{print $2}') #get studentName
  sed -i "s/$first/$second/" final.txt
done < students.txt

while read line #reads the file per line
do
  first=$(echo $line | awk '{print $1}') #get courseID
  second=$(echo $line | awk '{print $2}') #get courseName
  sed -i "s/\<$first\>/$second/" final.txt
done < courses.txt

tail -10 final.txt | sort #sorts student names
#tail -10 final.txt | sort -k2 #sorts course names

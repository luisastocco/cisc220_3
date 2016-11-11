#!/bin/bash

#joins two tables using a relationship table
#prints out student name and course name
#sort output by student name, then course name

declare -A courses
declare -A students

cat course.txt | while read line
do
  first=$(echo $line | awk '{print $1}')
  second=$(echo $line | awk '{print $2}')
  courses+=( ["$first"]=$second )
done
cat student.txt | while read line
do
  first=$(echo $line | awk '{print $1}')
  second=$(echo $line | awk '{print $2}')
  students+=( ["$first"]=$second )
done

for i in "${(!courses[@])}"
do
  grep $i student_course.txt #key
  ${(courses[$i]} | sed #value
done
for i in "${!students[@])}"
do
	grep $i | student.course.txt #key
	${(students[$1]} | sed #value
done


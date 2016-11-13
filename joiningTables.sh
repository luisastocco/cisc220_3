#!/bin/bash

#joins two tables using a relationship table
#prints out student name and course name
#sort output by student name, then course name

declare -A courses
declare -A students
cp students_courses.txt final.txt

cat courses.txt | while read line #reads the file per line
do
  first=$(echo $line | awk '{print $1}') #get courseID
  second=$(echo $line | awk '{print $2}') #get courseName
  courses+=( [$first]=$second ) #add to course "dictionary"
done
cat students.txt | while read line #reads the file per line
do
  first=$(echo $line | awk '{print $1}') #get studentID
  second=$(echo $line | awk '{print $2}') #get studentName
  students+=( [$first]=$second ) #add to student "dictionary"
done

for i in "${!courses[@]}"
do
	if [[ $i != courseID ]] ; then
		sed "s/$i/${courses[$i]}/" final.txt #replace key (courseID) for value (courseName)
	fi
done
for i in "${!students[@]}"
do
	if [[ $i != studentID ]] ; then
		sed "s/$i/${students[$i]}/" final.txt #replace KEY (studentID) for value (studentName)
	fi
done

sed s/studentID/studentName/ final.txt > /dev/null #no output
sed s/courseID/courseName/ final.txt > /dev/null #no output
tail -10 final.txt | sort > /dev/null #sorts student names #no output
tail -10 final.txt | sort -k2 #sorts course names

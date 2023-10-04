#!/bin/bash

#name: simpleAdmin.sh
#code by: Davis Farrow

#this code requires 4 arguments
#creates directory in current working directory using 1st argument as the name
#then creates a directory inside created directory using 2nd argument as name
#then creates a text file using 3rd argument as name, writes "Hello World!" to it, and saves it in last directory created
#creates a link from working directory to sub-directory created last and uses the 4th argument as name of link
#displays messages to user indicating what actions are being taken. 

if [ $# -lt 4 ]
then
	echo ERROR: Not enough arguments entered for bash file to run
else
	mkdir $1
	echo Creating a directory named $1....done!

	mkdir $1/$2/
	echo Creating a directory named $2 under $1....done!

	echo "Hello World!" > $3
	echo Creating a text file named $3....done!
	mv $3 $1/$2/
	echo Moving $3 to $1/$2....done!

	ln -s $1/$2/ $4
	echo Creating a link from working directory to $2....done!
fi






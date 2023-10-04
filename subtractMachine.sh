#1/bin/bash

#name: subtractMachine.sh
#code by: Davis Farrow

#this code requires 2 command line arguments to perform
#code subtracts the smaller from the larger and then prints out the difference to stdout
#then counts down from the difference to 1 while printing each to stdout

if [ $1 -gt $2 ]
then
	echo $1 is larger than $2
	diff=$(( $1-$2 ))
	echo Difference = $diff
	echo
	while [ $diff -gt 0 ]
	do
		echo Count Down = $diff
		((diff--))
	done
elif [ $2 -gt $1 ]
then
	echo $2 is larger than $1
	diff=$(( $2-$1 ))
	echo Difference = $diff
	echo
	while [ $diff -gt 0 ]
	do
		echo Count Down = $diff
		((diff--))
	done
else
	echo ERROR: input numbers are the same value. No difference
fi


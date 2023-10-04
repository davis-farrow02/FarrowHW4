#1/bin/bash

#name: threeAmigos.sh
#code by: Davis Farrow

#this code requires 4 command line arguments to perform
#this code sums the first 3 numbers 
#executes subtractMachine.sh where the 1st argument is the sum calculated and the 2nd argument is the 4th argument supplied by user

if [ $# -lt 4 ]
then
	echo ERROR: not enough command line arguments for script to perform
else
	sum=$(( $1+$2+$3 ))
	echo Sum = $sum
	./subtractMachine.sh $sum $4
fi

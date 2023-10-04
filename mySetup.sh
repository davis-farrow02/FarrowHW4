#1/bin/bash

#name: mySetup.sh
#code by: Davis Farrow

#this code is for assignment 4 problem 1 in CPE 422
#this code sets BBB freq to 600 MHz then displays CPU infor
#next displays variable which is set to a path
#finally displays number of items in current working directory.

#installs cpufreq to linux & set freq to 600 MHz then display CPU info
echo installing cpufrequtils if not already in linux system.
sudo apt install cpufrequtils
echo
echo Setting frequency of BeagleBone Black to 600 MHz... 
sudo cpufreq-set -f 600MHz
echo BeagleBone Black now set to 600 MHz.
echo
echo Printing CPU info...
cpufreq-info

#variable location which is set to path /home/debian & then displayed
location=/home/debian
echo
echo variable location = $location
echo

#variable items gets number of items in current working directory & displays the number
items=$(ls . | wc -l)
echo I have $items entries in current working directory.


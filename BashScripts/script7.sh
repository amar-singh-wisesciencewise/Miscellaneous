#!/bin/bash

#Create shell script to run in infinte loop which will print counter every 5 seconds and increatement the counter (say script named as runCounter.sh)
#Write another script to perform below algorithm:
#1. Execute runCounter.sh script in background
#2. Check if runCounter.sh is running. If stopped, print "runCounter.sh has been stopped" 
#3. Execute the script in one terminal
#4. open another terminal after 30 seconds and kill the process "runCounter.sh" and check if first terminal is giving correct output or not

bash runCounter.sh &

PID=$!

echo "PID of script is: $PID"

while true
do
	if ps -p $PID > /dev/null
	then
		sleep 2
	else
		echo "Script closed"
	        break	
	fi
		
done

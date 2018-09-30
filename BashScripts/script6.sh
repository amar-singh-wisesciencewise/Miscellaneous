#!/bin/bash

#Write below algorithm:
#1. Script should take one argument as input while execution (numeric number)
#2. write a method to check if input number is greater than 50. If yes, return 0 else return 1
#3. Call this method and get the return status of method to local variable and print the result

function IfGreaterThan50(){
    if [ $1 -gt 50 ] #mind the space near square brackets
    then    
        return 0 
    else
        return 1
    fi
}

IfGreaterThan50 $1

echo $?


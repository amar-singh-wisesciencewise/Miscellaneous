#!/bin/bash

#Write a script that will take one input argument as string. Search if string contains letter "A" and should replace it with "X"

echo "Enter your string"

read String

echo $String | tr A X

#for (( i=0; i<${#String}; i++ )) 
#do

#      if [ "${String:$i:1}" == A ] #search for the first A
#      then 
#          echo $String | tr A X  # if any "A" found then replace all As with X and exit
#          exit
#      fi
#done


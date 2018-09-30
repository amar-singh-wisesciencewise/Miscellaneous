#!/bin/bash
#Write method to parse below string and store result in variables. Print all variable data to file once read.
#"count: 65538 current: 3 status1: 0 status2: 2 status3: 1"


String="count: 65538 current: 3 status1: 0 status2: 2 status3: 1"

#removing extra spaces from string and also removing ":" 
String2=`echo $String | tr -s [:space:] " " | tr -d ":"`

Array=($String2) #converting String2 variable into space seperated array

for((i=0;i<(${#Array[*]}-1);i=i+2)) #traverse untill seconde last element in the Array
do
    TempVar=${Array[$i]} #variable name is stored
    declare -i $TempVar=${Array[$i+1]} #a integer varible is being created with the name of string in the TempVar and initialized
done


for((i=0;i<10;i=i+2))
do
    TempVar=${Array[$i]} 
    echo $TempVar ${!TempVar} >> file.txt #variable-name  value
done

cat file.txt

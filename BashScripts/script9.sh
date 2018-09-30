#!/bin/bash   
#Write a script that compares two floating point numbers and print the result                                                                                                                                                              

num1=3.14                                                                                                                                                                   
num2=1.5

res=`echo "$num1 > $num2" | bc -l`

echo $res

if [ $res == 1 ]                                                                                                                                                            
then                                                                                                                                                                        
        echo "$num1 > $num2"                                                                                                                                                
else                                                                                                                                                                        
        echo "$num1 <= $num2"                                                                                                                                               
fi      
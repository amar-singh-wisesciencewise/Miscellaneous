#!/bin/bash                                                                                                                                                                
#Write a script that can divide two floating point numbers and print the result


num1=3.14                                                                                                                                                                  
num2=1.1                                                                                                                                                                   
                                                                                                                                                                           
res=`echo "$num1 / $num2" | bc -l`                                                                                                                                         
                                                                                                                                                                           
echo $res


#COMMENT
#NOTE:
#Note the need to escape the multiply operator * with a backslash or enclose the arithmetic expression in single quotes. 
#Note the use of the backtick myvar=`command` syntax to assign the results of the arithmetic to a bash variable.
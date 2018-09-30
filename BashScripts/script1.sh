#!/bin/bash 
#Write method to create a simple text file and write below details in the file:
#	1. current date in format: "Date:MM/DD/YYYY
#	2. File should print current time every 10 seconds for total of 2 mins. Script should exit after 2 mins                                                                                                                                                               
                                                                                                                                                                           
FileName=date_time.txt                                                                                                                                                     
#cat > $FileName                                                                                                                                                           
                                                                                                                                                                           
echo "DATE:"`date +%d/%m%Y` > $FileName                                                                                                                                    
                                                                                                                                                                           
for ((i = 0 ; i<12; i++))                                                                                                                                                  
do                                                                                                                                                                         
        echo `date +%H:%M:%S` >> $FileName                                                                                                                                 
        sleep 1                                                                                                                                                            
                                                                                                                                                                           
done                                                                                                                                                                       
       
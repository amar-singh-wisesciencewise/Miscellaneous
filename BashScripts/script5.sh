#!/bin/bash    
#Write a script to backup your current directory:
#Algorithm as follows:
#1. Check if backup directory for current directory exist. for example: current_dir_bkp. If does not exist, then prompt user if user wants to create one
#2. If user says "y" or "yes" in capital or lower case, make backup directory in current directory
#3. If user says "no" or "n", in capital or lower case, then print " no directory was created"
#4. If user provides invalid option in case 2 and 3, then print " invalid response received"
#5. If backup directory created successfully, copy all content of directory to backup folder.
                                                                                                                                                 
                                                                                                                                                                
if [ -e $PWD"backup" ]                                                                                                                                          
then                                                                                                                                                            
        echo "Backup folder exist....updating files"                                                                                                            
        cp * $PWD"backup"                                                                                                                                       
else                                                                                                                                                            
        read -p "Do you want to create backup of present directory: " Choice                                                                                    
        if [ $Choice == "y" ] || [ $Choice == "yes" ] || [ $Choice == "Y" ] || [ $Choice == "YES" ]                                                             
        then                                                                                                                                                    
                echo "creating backup folder.....and copying files"                                                                                             
                mkdir $PWD"backup"                                                                                                                              
                cp * $PWD"backup"                                                                                                                               
        elif [ $Choice == "n" ] || [ $Choice == "N" ] || [ $Choice == "no" ] || [ $Choice == "NO" ]                                                             
        then                                                                                                                                                    
                echo "Backup folder not created"                                                                                                                
        else                                                                                                                                                    
                echo "Invalid response"                                                                                                                         
        fi                                                                                                                                                      
fi         
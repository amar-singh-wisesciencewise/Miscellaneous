#!/bin/bash

#Read a configuration file config.cfg and load field data in global variables:
#Content of config.cfg file: (Use arrays as appropriate)
#============ DATA START
#DUT1_AVAILABLE: P
#DUT2_AVAILABLE: P
#DUT3_AVAILABLE: P
#DUT4_AVAILABLE: P
#DUT5_AVAILABLE: P
#DUT1_SN: A001
#DUT2_SN: A002
#DUT3_SN: A003
#DUT4_SN: A004
#DUT5_SN: A005
#MAX_RPM: 25
#MIN_RPM: 1
#TOLERANCE: 100
#DESIRED_RPM1: 25
#DESIRED_RPM2: 25
#DESIRED_RPM3: 25
#DESIRED_RPM4: 25
#DESIRED_RPM5: 25
#START_DIR: ACLK
#RUNDURATION: 2m
#CYCLERUNCOUNT: 13
#CYCLERUNDURATION: 2h
#DATA END==================

FileName=config.cfg

#sed -i '1d;$d' $FileName
sed -i '/==/d' $FileName

while read -r line
do
    String=`echo $line | tr -s [:space:] " " | tr -d ":"` #removing extra spaces and ":"
    Array=($String)
    TempVar=${Array[0]} #variable name is stored
    declare -g $TempVar=${Array[1]}
    echo $TempVar ${!TempVar}    
done < $FileName




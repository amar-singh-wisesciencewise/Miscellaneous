#!/bin/bash

# Create CSV(.csv) file and read/write to/from file (Data should be stored with delimiter and row/column format)
# Data should be stored in local variables as appropriate
# Example:
	# 12:34:51,,91,,,,,,,Error: configuration failed
	# 12:34:58,1,50,A001,S,1,0,70.225873,28.65
	# 12:34:59,1,51,A002,S,1,0,70.225873,30.02



#creating CSV file
FileName=CSVFile.csv
FileName2=CSVFile2.csv

echo "PRODUCT_NAME,COST_PRICE,SELLING_PRICE,QUANTITY" > $FileName
echo "iPhone,3200,32000,1000" >> $FileName
echo "Samsung,1200,12000,800" >> $FileName
echo "MOTO,1300,12000,700" >> $FileName

#cat $FileName

declare ProductName
declare -i CostPrice
declare -i SellingPrice
declare -i Quantity


while read -r line
do
    String=`echo ${line//",,"/",0,"}`
    String=`echo $String | tr "," " "` #converting commas into spaces
    Array=($String) #converting string into Array
    ProductName=${Array[0]}
    CostPrice=${Array[1]}
    SellingPrice=${Array[2]}
    Quantity=${Array[3]}
    echo "$ProductName,$CostPrice,$SellingPrice,$Quantity" >> $FileName2
done < $FileName

cat $FileName2


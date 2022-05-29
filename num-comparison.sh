#!/usr/bin/bash

#this program is used for compare numeric with logical operator 

# -eq >> equal to 
# -gt >> greater than 
# -lt >> less than 
# -le >> less equal 
# -ne >> not equal to 

echo "this is comparison numeric logical program"
read -p "please input first number to compare with another: " first 
read -p "please input second number to compare with: " second 

if [ $first -eq $second ]
    then
        echo "the first number "$first" is equal to  the second number "$second" ";
elif [ $first -gt $second ]
    then 
        echo "the first number is greater than second number";
elif [ $second -gt $second ]
    then 
        echo "the second numeber is greater than first number";
elif [ $first -lt $second ]
    then
        echo "the first number is less than second number";
elif [ $second -lt $first ]
    then
        echo "the second number is less than first number";
else
    echo "the first number is not equal to the second number";
fi
#!/usr/bin/bash

#how to print a text 

echo "hello world";

#how to defined variables 

name="marvin";
jurusan="sija";

echo "hallo $name, wellcome to $jurusan";

#Arithmetic Expression 

#sum=$((10+5));

#echo "$sum"

#user input 
echo "sum calculation program"

echo "please input number: "; read a 
echo "please input another number: "; read b

sum=$((a+b));

echo "the result of summation is $sum";

#user input using custom message 

read -p "please input your name: " nama
echo "hallo $nama";


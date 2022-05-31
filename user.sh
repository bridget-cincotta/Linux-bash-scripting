#!/usr/bin/bash

#thereis two ways to create user automatically 
#using another file as a information of user or using looping and defined the name there


#first way
username=$(cat user.txt)

for x in $username; do 
adduser $x -d /home/coba
usermod -aG sija $x
passwd $x
done

#second way 

for y in {1..10};do
useradd $y | usermod -aG sija -d /home/marvin $x
passwd $y <<< "ini rahasia"$'\n'"ini rahasia"
done

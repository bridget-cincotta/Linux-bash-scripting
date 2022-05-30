#!/usr/bin/bash

username=$(cat user.txt)

for x in $username; do 
adduser $x -d /home/coba
usermod -aG sija $x
passwd $x
done
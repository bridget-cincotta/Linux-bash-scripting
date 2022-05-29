#!/usr/bin/bash

read -p "would you like to update and install package(y/n): " permision;

if [ $permision == "y" -o $permision == 'Y' ];
then
apt update
else
echo "alright";
fi

read -p "name of package that you wanted to install: " package

apt install $package

exec bash

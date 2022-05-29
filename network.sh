#!/usr/bin/bash 

echo "this program is used to setup network static easier for Linux Debian, would you like to use? (y/n): ";


read -p "setup ip add for first int (ex: 192.168.10.1/24): " ipadd
read -p "setup gateway (if not just skipped (y/n): )" gw
read -p "setup dns (if not just skipped (y/n): )" dns
 
cat << EOF | tee /etc/network/interfaces

auto ens36
iface ens36 inet static 
address $ipadd
gateway $gw
dns-nameserver $dns
EOF;

service networking restart
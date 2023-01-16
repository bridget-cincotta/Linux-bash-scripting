#!/usr/bin/bash
#this script is used to configure samba share 

#here's step by step 

#1. apt install samba -y
#2. nano /etc/samba/smb.conf
#3. add local user and add to samba user, The script bellow used to completing the task :
echo "script to provisioning samba service, created by Marvin Saputra - XII SIJA 2"
echo "add user automatically"
pass="sija123"
for x in {1..5}; do
#add user and its password
adduser samba$x  << EOF
$pass
$pass
EOF
#add group and add users to group
groupadd manager
usermod -d /home/samba$x samba$x
usermod -aG manager samba$x
#add local user to samba user
smbpasswd -a -s samba$x <<<"$pass"$'\n'"$pass"
done
#verify if local users has been sucessful created
#first we need to store information about samba user in sambauser.log file
mkdir /data && touch /data/sambauser.log
pdbedit -L > /data/sambauser.log
if  grep -q "samba" /etc/passwd && grep -q "samba" /data/sambauser.log; then 
	echo "samba and local users is exist"
else
	echo "samba and loca users is not exist"
fi
#4. create share folder give 755 permission for read only and 777 for writeable share
#5. restart service
#6. in client we can use smbclient //server-name/share-name -U username to access samba share
#7. use cifs (#apt install cifs-utils) to mount samba share, add following command to /etc/fstab :
#//serveripordomain/sharename	/mount/point	cifs user=username,password=yourpassword
#8.everything is done here

#created by marvin XII SIJA 2



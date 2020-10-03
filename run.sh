#!/bin/bash
# (c) J~Net 2020
#
# jnet.sytes.net
#
# Example to run make executable then type:
# ./run.sh 
#
#
# https://jnet.forumotion.com/t1714-git-get-for-github-it-downloads-github-repos-auto-with-bash#2656
server="server" # Server Name
username="jusername" # administrator
password="password" # password
share="NETWORK" # Share Name
filename="GITHUB.txt" # File Name
path="/home/$USER/Documents/Scripts/BASH/Get_Git/" # Path to copy filename to.
installpath="/home/$USER/Documents/Scripts/"
echo "Welcome To Git Get By J~Net 2020 jnet.sytes.net"
echo "Copying File Over Ready For DL"
echo ""
# smbclient '//windowsserver/c$' -c 'lcd /tmp; cd Directory; get file.txt' -U administrator%password
smbclient "//$server/$share" -c "lcd $path; cd Directory; get $filename" -U $username%$password
#
#cd $installpath
while IFS="" read -r p || [ -n "$p" ]
do

  printf '%s\n' "$p"
 
done < $filename
#
for i in $(cat $filename)
do

    $1 # sudo git clone $i 
done
#
# rm $filename

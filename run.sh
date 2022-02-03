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
username="username" # administrator
password="password" # password
share="NETWORK" # Share Name
filename="GITHUB.txt" # File Name
path="/home/$USER/Documents/Scripts/Get_Git/" # Path to copy filename to.
installpath="/home/$USER/Documents/Scripts/"
fallback="https://raw.githubusercontent.com/jamieduk/git_get/main/GITHUB.txt"
#
echo "Welcome To Git Get By J~Net 2020 jnet.sytes.net"
echo "Copying File Over Ready For DL"
echo ""

while IFS="" read -r p || [ -n "$p" ]
do
  git clone $p # git clone   
done < $filename
#
echo "All Commands Have Been Ran!"
#
#
# rm $filename

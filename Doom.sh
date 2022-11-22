#!/bin/bash 

echo "This script will"
sleep 3
echo "will turn Debian into a custom hacking box"
sleep 3
echo "Do you want to run this script press enter or ctrl-c to exit"
read

apt-get update -y && apt-get full-upgrade -y && apt-get dist-upgrade -y && apt autoremove -y && apt autoclean -y

cat pkg.txt | xargs apt install -y 

wget -q -O - https://archive.kali.org/archive-key.asc | gpg --import

echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list gpg -a --export ED444FF07D8D0BF6 | apt-key add -

apt-get update -y && apt-get full-upgrade -y && apt-get dist-upgrade -y && apt autoremove -y && apt autoclean -y

touch Doom_update.sh 

echo "apt-get update -y && apt-get full-upgrade -y && apt-get dist-upgrade -y && apt autoremove -y && apt autoclean" > Doom
_update.sh

chmod +x Doom_update.sh

cat others.txt | xargs apt install -y 

echo "Do you want to reboot into your no opreating system? [1|2|]"
echo "1, Reboot"
echo "2, exit"

read -rp "= " CHOICE

if [ "$CHOICE" = 1 ]; then
	reboot

else 
	echo "exiting...."
	sleep 3
	exit

fi 


























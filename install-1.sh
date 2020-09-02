#!/bin/bash
clear
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[1;32m'
BLUE='\033[1;34m'
printf "Install? "
#read -p "Install KDE parts? (SKIP ATM)" answer
#if [[$answer = 1]] ; then
# mkdir temp
# cd temp
# 
#fi
echo
read -p "Confirm install? [SUDO| UBUNTU 20.04 LTS] [Y/n] if you need wine, say [wine]---" answer
if [[ $answer = y ]] ; then
  echo "checking system space, wait 5 seconds"
  sleep 1
  echo "#"
  sleep 1
  echo "##"
  sleep 1
  echo "###"
  sleep 1
  echo "####"
  echo "showing system"
  sleep 2
  clear
  df -h
  sleep 3
  echo
  clear
  sudo apt autoremove
  apt autoremove --purge
  sudo apt update
  sudo apt-get install update
  sudo apt-get upgrade
  #install needed dependencies.
  sudo wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -
  sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
  sudo apt-get install python -y
  sudo apt-get install snapd -y
  sudo apt-get install software-properties-common -y
  sudo apt-apt-repository ppa:ubuntu-mate-dev/precise-mate -y
  sudo apt-get install git
  sudo add-apt-repository ppa:hda-me/xscreensaver -y
  #Update for repos
  sudo apt update
  #install repos
  sudo apt-get install mate-terminal -y
  sudo apt-get install mysql-server -y
  sudo apt-get install apache2 -y
  sudo apt-get install php php-mysqli php-xml php-pdo -y
  sudo apt-get install dolphin -y
  sudo snap install code --classic
  sudo apt-get install ssh -y
  sudo apt-get install wireshark -y
  sudo apt-get install filezilla -y
  sudo apt-get install virutalbox -y
  sudo apt-get install glances -y
  sudo apt-get install grub2 -y
  sudo apt install github-desktop -y
  #docker stuff
  sudo apt install docker.io -y
  sudo apt-get install docker-ce docker-ce-cli containerd.io -y
  #end of docker
  #because i wanna have fun. dont judge.
  sudo apt install sl
  sudp apt install cowsay
  sudo apt-get install xscreensaver xscreensaver-gl-extra xscreensaver-data-extra -y
  #end of fun :(
  clear
  echo *im done installing*
  echo
  echo
  sleep 1
  echo "*"
  sleep 1
  echo "**"
  sleep 1
  echo "***"
  exit

fi
if [[ $answer = n ]] ; then
  clear
  echo "No system changes"
  echo
  echo
  sleep 1
  echo "*"
  sleep 1
  echo "**"
  sleep 1
  echo "***"
  exit
fi
if [[ $answer = wine ]]; then
echo installing wine
sleep 3
  sudo apt install wine64 -y
  
fi
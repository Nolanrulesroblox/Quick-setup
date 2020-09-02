#!/bin/bash
clear
RED='\033[0;31m'
NC='\033[0m' # No Color
GREEN='\033[1;32m'
BLUE='\033[1;34m'
printf "Welcome to the Installer! "
echo ""
echo ""
sleep 2
printf "1: Github (with git) 2: Wine x86-64 3: Docker 4: Mysql-server" 
echo ""
echo ""
printf "5: Python 6: PHP with MysqlI, PDO and XML 7: Wire Shark" 
echo ""
echo ""
printf "8: Filezilla 9: Apache2 10: dolphin 11: VSCode (with snap)" 
echo ""
echo ""
printf "8: Filezilla 9: Apache2 10: dolphin 11: VSCode (with snap)" 
echo ""
echo ""
printf "**Note: SSH is always installed.**" 
echo ""
echo ""
echo "to Cancel, Press C"
echo ""
read -p "Please Choose from the list Shown: (1 - 11) " answer 
if [[ $answer = c ]]; then
    # Install
    echo "No system changes."
    exit
fi
sleep 0
echo "Please wait while installing Common dependencies"
sleep 2
# common dependencies
    sudo apt update
    sudo apt autoremove
    sudo apt autoremove --purge
    sudo apt update
    sudo apt-get install update
    sudo apt-get upgrade
    sudo apt-get install ssh software-properties-common -y
    sudo apt update
# end of dependencies
clear
echo "Dependencies Installed successful!"
sleep 4
clear
#github
if [[ $answer = 1 ]]; then
    # Install
    echo "Installing: Github with Git"
    sleep 2
    echo ""
    sudo apt install git -y
    clear
    echo "Github with Git Install successful!"
    # Restart
    read -p "Want to install another item? y/n " answer
    if [[ $answer = y ]]; then
    clear
    sudo bash install-2.sh
    fi
    # end
    if [[ $answer = n ]] ; then
    clear
    echo "Thank you for using! :D"
    sleep 5
    exit
    fi
fi
#wine
if [[ $answer = 2 ]]; then
    # Install
    echo "Installing: Wine x86-64"
    sleep 2
    echo ""
    sudo apt install wine64 -y
    clear
    echo "Wine x86-64 Install successful!"
    # Restart
    read -p "Want to install another item? y/n " answer
    if [[ $answer = y ]]; then
    clear
    sudo bash install-2.sh
    fi
    # end
    if [[ $answer = n ]] ; then
    clear
    echo "Thank you for using! :D"
    sleep 5
    exit
    fi
fi
#docker
if [[ $answer = 3 ]]; then
    # Install
    echo "Installing: Docker"
    sleep 2
    echo ""
    sudo apt install docker.io -y
    sudo apt-get install docker-ce docker-ce-cli containerd.io -y
    clear
    echo "Docker Install successful!"
    # Restart
    read -p "Want to install another item? y/n " answer
    if [[ $answer = y ]]; then
    clear
    sudo bash install-2.sh
    fi
    # end
    if [[ $answer = n ]] ; then
    clear
    echo "Thank you for using! :D"
    sleep 5
    exit
    fi
fi
#mysql
if [[ $answer = 4 ]]; then
    # Install
    echo "Installing: Mysql-server"
    sleep 2
    echo ""
    sudo apt install mysql-server -y
    clear
    echo "Mysql-server Install successful!"
    # Restart
    read -p "Want to install another item? y/n " answer
    if [[ $answer = y ]]; then
    clear
    sudo bash install-2.sh
    fi
    # end
    if [[ $answer = n ]] ; then
    clear
    echo "Thank you for using! :D"
    sleep 5
    exit
    fi
fi
#python
if [[ $answer = 5 ]]; then
    # Install
    echo "Installing: Python"
    sleep 2
    echo ""
    sudo apt-get install python -y
    clear
    echo "Python Install successful!"
    # Restart
    read -p "Want to install another item? y/n " answer
    if [[ $answer = y ]]; then
    clear
    sudo bash install-2.sh
    fi
    # end
    if [[ $answer = n ]] ; then
    clear
    echo "Thank you for using! :D"
    sleep 5
    exit
    fi
fi
#php
if [[ $answer = 6 ]]; then
    # Install
    echo "Installing: PHP with MysqlI, PDO and XML"
    sleep 2
    echo ""
    sudo apt-get install php php-mysqli php-xml php-pdo -y
    clear
    echo "PHP with MysqlI, PDO and XML Install successful!"
    # Restart
    read -p "Want to install another item? y/n " answer
    if [[ $answer = y ]]; then
    clear
    sudo bash install-2.sh
    fi
    # end
    if [[ $answer = n ]] ; then
    clear
    echo "Thank you for using! :D"
    sleep 5
    exit
    fi
fi
#wire shark
if [[ $answer = 7 ]]; then
    # Install
    echo "Installing: Wireshark"
    sleep 2
    echo ""
    sudo apt-get install wireshark -y
    clear
    echo "Wireshark Install successful!"
    # Restart
    read -p "Want to install another item? y/n " answer
    if [[ $answer = y ]]; then
    clear
    sudo bash install-2.sh
    fi
    # end
    if [[ $answer = n ]] ; then
    clear
    echo "Thank you for using! :D"
    sleep 5
    exit
    fi
fi
#filezilla
if [[ $answer = 8 ]]; then
    # Install
    echo "Installing: Filezilla"
    sleep 2
    echo ""
    sudo apt-get install filezilla -y
    clear
    echo "Filezilla Install successful!"
    # Restart
    read -p "Want to install another item? y/n " answer
    if [[ $answer = y ]]; then
    clear
    sudo bash install-2.sh
    fi
    # end
    if [[ $answer = n ]] ; then
    clear
    echo "Thank you for using! :D"
    sleep 5
    exit
    fi
fi
#apache2
if [[ $answer = 9 ]]; then
    # Install
    echo "Installing: Apache2"
    sleep 2
    echo ""
    sudo apt-get install wireshark -y
    clear
    echo "Apache2 Install successful!"
    # php for apache2
    read -p "Will you need php? y/n " answer
    if [[ $answer = y ]]; then
    clear
        sudo apt-get install php php-mysqli php-xml php-pdo -y
    clear
    echo "PHP install successful"
    #php install item1
        read -p "Want to install another item? y/n " answer
    if [[ $answer = y ]]; then
    clear
    sudo bash install-2.sh
    fi
    # end
    if [[ $answer = n ]] ; then
    clear
    echo "Thank you for using! :D"
    sleep 5
    exit
    fi
    fi
    # end
    if [[ $answer = n ]] ; then
    read -p "Want to install another item? y/n " answer
    if [[ $answer = y ]]; then
    clear
    sudo bash install-2.sh
    fi
    # end
    if [[ $answer = n ]] ; then
    clear
    echo "Thank you for using! :D"
    sleep 5
    exit
    fi
    fi
fi
#dolphin
if [[ $answer = 10 ]]; then
    # Install
    echo "Installing: dolphin"
    sleep 2
    echo ""
    sudo apt-get install dolphin -y
    clear
    echo "dolphin Install successful!"
    # Restart
    read -p "Want to install another item? y/n " answer
    if [[ $answer = y ]]; then
    clear
    sudo bash install-2.sh
    fi
    # end
    if [[ $answer = n ]] ; then
    clear
    echo "Thank you for using! :D"
    sleep 5
    exit
    fi
fi
#Vscode
if [[ $answer = 11 ]]; then
    # Install
    echo "Installing: VScode and Snapd"
    sleep 2
    echo ""
    sudo apt-get install snapd -y
    sudo snap install code --classic
    clear
    echo "VScode and Snapd Install successful!"
    # Restart
    read -p "Want to install another item? y/n " answer
    if [[ $answer = y ]]; then
    clear
    sudo bash install-2.sh
    fi
    # end
    if [[ $answer = n ]] ; then
    clear
    echo "Thank you for using! :D"
    sleep 5
    exit
    fi
fi
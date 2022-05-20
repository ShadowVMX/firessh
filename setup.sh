#!/bin/bash

#!/bin/bash
#
#
#

if [[ $EUID != 0 ]] ; then
	echo " "
	echo "$(tput setaf 1)[!]$(tput setaf 3)You $(tput setaf 1)MUST $(tput setaf 3)be root."
	echo " "
	exit
fi

echo " "
echo "$(tput setaf 1)[+]$(tput setaf 3)Updating..."
apt update -y &> /dev/null
echo "$(tput setaf 1)[V]$(tput setaf 3)Done."
echo " "
sleep 1
echo "$(tput setaf 1)[+]$(tput setaf 3)Upgrading..."
apt full-upgrade -y &> /dev/null
echo "$(tput setaf 1)[V]$(tput setaf 3)Done."
echo " "
sleep 1
echo " "
echo "$(tput setaf 1)[+]$(tput setaf 3)ufw..."
apt install ufw -y &> /dev/null
echo "$(tput setaf 1)[V]$(tput setaf 3)Done."
echo " "
sleep 1
echo "$(tput setaf 1)[+]$(tput setaf 3)autoservice..."
chmod +x autoservice &> /dev/null
cp autoservice /usr/bin/
echo "$(tput setaf 1)[V]$(tput setaf 3)Done."
echo " "
sleep 1
echo "$(tput setaf 1)[+]$(tput setaf 3)sshwall..."
chmod +x sshwall &> /dev/null
cp sshwall /usr/bin/
echo "$(tput setaf 1)[V]$(tput setaf 3)Done."
echo " "

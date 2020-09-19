#!/bin/bash
 
useradd $1 -m -s /bin/bash

echo 'export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '"'"'{print $2}'"'"'):0.0;' >> /home/$1/.profile

echo $1" ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$1

sed -i 's/linux/'$1'/g' /etc/wsl.conf

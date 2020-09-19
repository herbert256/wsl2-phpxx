#!/bin/bash
 
apt -y install git wget gnupg software-properties-common dirmngr mc net-tools

apt -y purge snapd
rm -rf ~/snap /snap /var/snap /var/lib/snapd

cat << EOT > /etc/wsl.conf
[network]
hostname=linux

[user]
default=linux

[automount]
crossDistro=true
EOT

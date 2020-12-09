#!/bin/bash

cp /wsl/base/start.sh /start
chmod 700 /start
chown $1:$1 /start

rm -Rf /wsl

apt -y remove cc make pkg-config 
apt -y remove apache2-dev 
apt -y remove libonig-dev libtidy-dev libzip-dev libxslt1-dev libxml2-dev libfreetype6-dev libsqlite3-dev libssl-dev zlib1g-dev libbz2-dev libpng-dev libwebp-dev libxpm-dev

apt -y autoremove
apt -y autoclean
apt -y clean

rm -Rf /var/log/*.log
rm -Rf /var/log/lastlog
rm -Rf /var/log/faillog
rm -Rf /var/log/apt/*   
rm -Rf /tmp/*   
rm -Rf /var/cache/apt/*.bin

#!/bin/bash

cd /var/www

/wsl/www/$1.sh

cat << EOT >> /mnt/wsl/phpxx/etc/apache2/apache2.conf
Alias /$1 /var/www/$1
<Directory /var/www/$1/>
  Options Indexes FollowSymLinks MultiViews
  AllowOverride All
  Require all granted
</Directory>
EOT

chown -R data:data /var/www/$1

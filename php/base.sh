#!/bin/bash

apt-get -y install gcc make pkg-config
apt-get -y install apache2 apache2-dev
apt-get -y install             tidy libtidy5deb1 libonig5    libpng16-16 libwebp6    libjpeg-progs libxpm4    libfreetype6     libxslt1.1
apt-get -y install libzip-dev  libtidy-dev       libonig-dev libpng-dev  libwebp-dev libjpeg-dev   libxpm-dev libfreetype6-dev libxslt1-dev libcurl4-gnutls-dev libxml2-dev libsqlite3-dev libssl-dev zlib1g-dev libbz2-dev   

# The only difference between Debian Buster 10.5 and Ubuntu Focal 20.04
# One of below two statements will fail
apt-get -y install libzip4
apt-get -y install libzip5

a2dismod mpm_event
a2enmod  mpm_prefork

deluser www-data

cat << EOT >> /etc/apache2/apache2.conf
ServerName localhost
<FilesMatch "\.php">
  SetHandler application/x-httpd-php
</FilesMatch>
EOT

rm -Rf /app
rm -Rf /var/www/

mkdir /app
mkdir /var/www/

chown -R php$1:php$1 /app
chown -R php$1:php$1 /var/www

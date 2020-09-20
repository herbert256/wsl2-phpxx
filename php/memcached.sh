#!/bin/bash
 
apt-get -y install memcached libmemcached-dev 

pecl channel-update pecl.php.net

printf "\n\n\n\n\n\n\n\n" | pecl install memcached

echo "extension=memcached.so" >> /usr/local/lib/php.ini

apt-get -y remove memcached libmemcached-dev
apt-get -y install libmemcached11 libmemcachedutil2 

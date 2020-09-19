#!/bin/bash
 
apt-get -y install memcached libmemcached11 libmemcachedutil2 libmemcached-dev

pecl channel-update pecl.php.net

printf "\n\n\n\n\n\n\n\n" | pecl install memcached

echo "extension=memcached.so" >> /usr/local/lib/php.ini

#!/bin/bash
 
apt-get -y install memcached libmemcached-dev libmemcached11 libmemcachedutil2 

pecl channel-update pecl.php.net

# strange "Segmentation fault" errors sometimes.
printf "\n\n\n\n\n\n\n\n" | pecl install memcached
printf "\n\n\n\n\n\n\n\n" | pecl install memcached
printf "\n\n\n\n\n\n\n\n" | pecl install memcached

echo "extension=memcached.so" >> /usr/local/lib/php.ini

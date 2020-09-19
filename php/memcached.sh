#!/bin/bash
 
apt-get -y install libmemcached-dev

pecl channel-update pecl.php.net

printf "\n\n\n\n\n\n\n\n" | pecl install memcached

echo "extension=memcached.so" >> /usr/local/lib/php.ini

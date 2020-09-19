#!/bin/bash

rm -f /var/www/html

mkdir -p /var/www

ln -s /app/$1 /var/www/html

chown -R data:data /var/www

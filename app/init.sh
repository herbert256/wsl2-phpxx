#!/bin/bash

rm -Rf /app
rm -Rf /var/www/html

git clone $1 /app 

chown -R data:data /app
chown -R data:data /var/www

chmod 755 /app/$2

service mariadb start

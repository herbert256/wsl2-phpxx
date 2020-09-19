#!/bin/bash

wget -O - https://wordpress.org/latest.tar.gz | tar xz

service mariadb start
sleep 3
echo "CREATE DATABASE wordpress CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;" | mysql
echo "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wordpress';" | mysql
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' WITH GRANT OPTION;" | mysql
echo "FLUSH PRIVILEGES;" | mysql
service mariadb stop

mv wordpress/wp-config-sample.php wordpress/wp-config.php

sed -i "s/localhost/127.0.0.1/g"                                   wordpress/wp-config.php
sed -i "s/database_name_here/wordpress/g"                          wordpress/wp-config.php
sed -i "s/username_here/wordpress/g"                               wordpress/wp-config.php
sed -i "s/password_here/wordpress/g"                               wordpress/wp-config.php
sed -i "s/put your unique phrase here/73456dfggfddfgfd654323477/g" wordpress/wp-config.php

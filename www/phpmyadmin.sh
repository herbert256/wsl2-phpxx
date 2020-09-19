#!/bin/bash

wget -O - https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-english.tar.xz | tar xJ
mv phpMyAdmin* phpmyadmin

cp phpmyadmin/config.sample.inc.php phpmyadmin/config.inc.php
sed -i "s/secret'] = ''/secret'] = '73456dfggfddfgfdsdf54323456654323477'/g" phpmyadmin/config.inc.php
sed -i "s/AllowNoPassword'] = false/AllowNoPassword'] = true/g"              phpmyadmin/config.inc.php
sed -i "s/localhost/127.0.0.1/g"                                             phpmyadmin/config.inc.php

service mariadb start
sleep 3
mysql < phpmyadmin/sql/create_tables.sql
echo "CREATE USER 'phpmyadmin'@'localhost' IDENTIFIED BY 'phpmyadmin';" | mysql
echo "GRANT ALL PRIVILEGES ON *.* TO 'phpmyadmin'@'localhost' WITH GRANT OPTION;" | mysql
echo "CREATE USER 'data'@'localhost' IDENTIFIED BY '';" | mysql
echo "GRANT ALL PRIVILEGES ON *.* TO 'data'@'localhost' WITH GRANT OPTION;" | mysql
echo "FLUSH PRIVILEGES;" | mysql
service mariadb stop
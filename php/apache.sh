#!/bin/bash

sed -i 's/RUN_USER=www-data/RUN_USER='php$1'/g'   /etc/apache2/envvars
sed -i 's/RUN_GROUP=www-data/RUN_GROUP='php$1'/g' /etc/apache2/envvars
 
sed -i 's/80/127.0.0.1:10'$1'/g'                  /etc/apache2/ports.conf
sed -i 's/80/10'$1'/g'                            /etc/apache2/sites-available/000-default.conf


#!/bin/bash
 
apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
echo "deb http://mariadb.mirror.triple-it.nl/repo/10.5/debian buster main" | tee /etc/apt/sources.list.d/MariaDB.list

apt update
apt -y install mariadb-server

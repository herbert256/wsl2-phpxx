#!/bin/bash

if [ "$WSL_DISTRO_NAME" = "data" ]

then

  mkdir /mnt/wsl/app
  mkdir /mnt/wsl/www

  sudo mount --bind /app     /mnt/wsl/app
  sudo mount --bind /var/www /mnt/wsl/www

  sudo service mariadb start 
  sudo service memcached start

else

  sudo mount --bind /mnt/wsl/app /app
  sudo mount --bind /mnt/wsl/www /var/www

  sudo service apache2 start

fi
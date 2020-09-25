#!/bin/bash

apt-get -y install libyaml-0-2 libyaml-dev

pecl channel-update pecl.php.net

printf "\n\n\n\n\n\n\n\n" | pecl install yaml
printf "\n\n\n\n\n\n\n\n" | pecl install yaml
printf "\n\n\n\n\n\n\n\n" | pecl install yaml

echo "extension=yaml.so" >> /usr/local/lib/php.ini

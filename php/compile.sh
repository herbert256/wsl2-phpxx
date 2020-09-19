#!/bin/bash
 
mkdir /wsl/build
cd /wsl/build

wget $2
tar xf php-*tar*
rm php-*tar*
cd php-*

./configure \
  --with-apxs2=/usr/bin/apxs2 \
  --with-mysql-sock=/run/mysqld/mysqld.sock \
  --enable-mbstring \
  --enable-exif \
  --enable-ftp \
  --with-zip \
  --enable-soap \
  --with-mysqli \
  --with-pdo-mysql \
  --with-curl \
  --with-openssl \
  --with-zlib \
  --with-bz2 \
  --enable-gd \
  --with-webp \
  --with-jpeg \
  --with-xpm \
  --with-freetype \
  --with-tidy \
  --with-xsl \
  --with-pear

make -j4
make install

cat << EOT > /usr/local/lib/php.ini
memory_limit=4096M
max_execution_time=5
display_errors=on
error_reporting=E_ALL
zend_extension=opcache.so
opcache.enable=1
opcache.enable_cli=1
opcache.jit_buffer_size=32M
opcache.jit=1235
EOT

sed -i 's/80/127.0.0.1:10'$1'/g'                  /etc/apache2/ports.conf
sed -i 's/80/10'$1'/g'                            /etc/apache2/sites-available/000-default.conf
sed -i 's/RUN_USER=www-data/RUN_USER='php$1'/g'   /etc/apache2/envvars
sed -i 's/RUN_GROUP=www-data/RUN_GROUP='php$1'/g' /etc/apache2/envvars

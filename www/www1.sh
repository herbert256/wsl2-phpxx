#!/bin/bash

rm -Rf /var/www

mkdir -p /var/www/html

cat << EOT > /var/www/html/index.php
<html>
  <head>
    <title><?php echo phpversion(); ?></title>
  </head>
  <body>
    <h1><?php echo phpversion(); ?></h1>
    <ul>
      <li><a href="http://localhost:1080">PHP 8.0 - http://localhost:1080</a></li>
      <li><a href="http://localhost:1074">PHP 7.4 - http://localhost:1074</a></li>
      <li><a href="http://localhost:1073">PHP 7.3 - http://localhost:1073</a></li>
      <li><a href="http://localhost:1072">PHP 7.2 - http://localhost:1072</a></li>
      <li><a href="http://localhost:1071">PHP 7.1 - http://localhost:1071</a></li>
      <li><a href="http://localhost:1070">PHP 7.0 - http://localhost:1070</a></li>
    </ul>
  </body>
</html>
EOT

chown -R data:data /var/www
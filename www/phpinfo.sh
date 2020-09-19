#!/bin/bash

mkdir phpinfo

cat << EOT > phpinfo/index.php
<?php
  phpinfo ();
?>
EOT

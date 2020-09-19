#!/bin/bash

chown -R data:data /app  

cd /app

chmod 755 /app/$1

/app/$1

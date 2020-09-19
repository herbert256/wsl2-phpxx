#!/bin/bash

wget -O - https://github.com/phpsysinfo/phpsysinfo/archive/v3.3.2.tar.gz | tar xz

mv phpsysinfo-3.3.2 phpsysinfo

cp phpsysinfo/phpsysinfo.ini.new phpsysinfo/phpsysinfo.ini

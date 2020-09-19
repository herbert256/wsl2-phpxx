rem @echo off

rem
rem  Installation of WSL2-data
rem

set "oldDir=%cd%"
cd /D "%~dp0"

call settings.cmd

call windows\inits.cmd

call windows\image.cmd > "%wsl%\log\image.txt"    2>&1
call windows\base.cmd  > "%wsl%\log\base.txt"     2>&1
call windows\phpxx.cmd > "%wsl%\log\php_base1.txt" 2>&1
call windows\data.cmd  > "%wsl%\log\data.txt"     2>&1

call windows\www.cmd                              > "%wsl%\log\www.txt"            2>&1
wsl -d data -u root -- /wsl/www/www.sh phpinfo    > "%wsl%\log\www_phpinfo.txt"    2>&1
wsl -d data -u root -- /wsl/www/www.sh phpsysinfo > "%wsl%\log\www_phpsysinfo.txt" 2>&1
wsl -d data -u root -- /wsl/www/www.sh phpmyadmin > "%wsl%\log\www_phpmyadmin.txt" 2>&1
wsl -d data -u root -- /wsl/www/www.sh wordpress  > "%wsl%\log\www_wordpress.txt"  2>&1

call windows\export.cmd phpxx >"%wsl%\log\php_export.txt" 2>&1

call windows\php.cmd 80 %php_80% > "%wsl%\log\80.txt" 2>&1
call windows\php.cmd 74 %php_74% > "%wsl%\log\74.txt" 2>&1
rem call windows\php.cmd 73 %php_73% > "%wsl%\log\73.txt" 2>&1
rem call windows\php.cmd 72 %php_72% > "%wsl%\log\72.txt" 2>&1
rem call windows\php.cmd 71 %php_71% > "%wsl%\log\71.txt" 2>&1
rem call windows\php.cmd 70 %php_70% > "%wsl%\log\70.txt" 2>&1

call windows\exits.cmd > "%wsl%\log\base_exits.txt" 2>&1

call start.cmd

cd /D "%oldDir%"

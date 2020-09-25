@echo off

rem
rem  Installation of WSL2-PHPxx
rem

echo Starting WSL2-PHPxx installation

set "oldDir=%cd%"
cd /D "%~dp0"

echo Settings    && call settings.cmd
echo Inits       && call windows\inits.cmd

echo Image       && call windows\image.cmd           > "%wsl%\log\image.txt"          2>&1
echo Base        && call windows\base.cmd            > "%wsl%\log\base_start.txt"     2>&1
echo PHP base    && call windows\phpxx.cmd           > "%wsl%\log\php_start.txt"      2>&1
echo Data step 1 && call windows\data1.cmd           > "%wsl%\log\data_open.txt"      2>&1

echo WWW setup   && call windows\www1.cmd            > "%wsl%\log\www_start.txt"      2>&1
echo phpinfo     && call windows\www2.cmd phpinfo    > "%wsl%\log\www_phpinfo.txt"    2>&1
echo phpsysinfo  && call windows\www2.cmd phpsysinfo > "%wsl%\log\www_phpsysinfo.txt" 2>&1
echo phpmyadmin  && call windows\www2.cmd phpmyadmin > "%wsl%\log\www_phpmyadmin.txt" 2>&1

echo Data step 2 && call windows\data2.cmd           > "%wsl%\log\data_close.txt"     2>&1
echo Export      && call windows\export.cmd phpxx    > "%wsl%\log\php_export.txt"     2>&1

echo PHP 8.0     && call windows\php.cmd 80 %php_80% > "%wsl%\log\80.txt"             2>&1
echo PHP 7.4     && call windows\php.cmd 74 %php_74% > "%wsl%\log\74.txt"             2>&1
echo PHP 7.3     && call windows\php.cmd 73 %php_73% > "%wsl%\log\73.txt"             2>&1
echo PHP 7.2     && call windows\php.cmd 72 %php_72% > "%wsl%\log\72.txt"             2>&1
echo PHP 7.1     && call windows\php.cmd 71 %php_71% > "%wsl%\log\71.txt"             2>&1
echo PHP 7.0     && call windows\php.cmd 70 %php_70% > "%wsl%\log\70.txt"             2>&1

echo Exits       && call windows\exits.cmd          > "%wsl%\log\exits_start.txt"    2>&1

echo App         && call app.cmd

cd /D "%oldDir%"

echo Done
@echo off

rem
rem  Installation of WSL2-PHPxx
rem

echo Starting WSL2-PHPxx installation.

set "oldDir=%cd%"
cd /D "%~dp0"

call settings.cmd
call windows\inits.cmd

call windows\image.cmd           > "%wsl%\log\image.txt"          2>&1
call windows\base.cmd            > "%wsl%\log\base_start.txt"     2>&1
call windows\phpxx.cmd           > "%wsl%\log\php_start.txt"      2>&1
call windows\data1.cmd           > "%wsl%\log\data_open.txt"      2>&1
call windows\app.cmd             > "%wsl%\log\app_start.txt"   	  2>&1
call windows\www.cmd             > "%wsl%\log\www_start.txt"      2>&1

call windows\www2.cmd phpinfo    > "%wsl%\log\www_phpinfo.txt"    2>&1
call windows\www2.cmd phpsysinfo > "%wsl%\log\www_phpsysinfo.txt" 2>&1
call windows\www2.cmd phpmyadmin > "%wsl%\log\www_phpmyadmin.txt" 2>&1

call windows\data2.cmd           > "%wsl%\log\data_close.txt"     2>&1
call windows\export.cmd phpxx    > "%wsl%\log\php_export.txt"     2>&1

call windows\php.cmd 80 %php_80% > "%wsl%\log\80.txt"             2>&1
call windows\php.cmd 74 %php_74% > "%wsl%\log\74.txt"             2>&1
call windows\php.cmd 73 %php_73% > "%wsl%\log\73.txt"             2>&1
call windows\php.cmd 72 %php_72% > "%wsl%\log\72.txt"             2>&1
call windows\php.cmd 71 %php_71% > "%wsl%\log\71.txt"             2>&1
call windows\php.cmd 70 %php_70% > "%wsl%\log\70.txt"             2>&1

call windows\exits.cmd           > "%wsl%\log\exits_start.txt"    2>&1

echo Done.

cd /D "%oldDir%"

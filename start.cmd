@echo off

rem
rem wsl support script
rem

set "oldDir=%cd%"
cd /D "%~dp0"

call stop.cmd > NUL 2>&1

wsl -d data  /start
wsl -d php80 /start
wsl -d php74 /start
wsl -d php73 /start
wsl -d php72 /start
wsl -d php71 /start
wsl -d php70 /start

cd /D "%oldDir%"
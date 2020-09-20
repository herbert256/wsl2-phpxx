@echo off

rem
rem Refresh the installed application.
rem
rem run this script if you changed the %data_*% settings in settings.cmd
rem

set "oldDir=%cd%"
cd /D "%~dp0"

call settings.cmd

wsl --shutdown
call windows\app.cmd
wsl --shutdown

call start.cmd

echo Done.

cd /D "%oldDir%"
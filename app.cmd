@echo off

rem
rem Refresh the installed application.
rem
rem run this script if you changed the %data_*% settings in settings.cmd
rem

set "oldDir=%cd%"
cd /D "%~dp0"

call settings.cmd

call stop.cmd > NUL 2>&1
call windows\app.cmd
call start.cmd

cd /D "%oldDir%"
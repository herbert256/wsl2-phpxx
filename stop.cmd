@echo off

rem
rem wsl support script
rem

set "oldDir=%cd%"
cd /D "%~dp0"

wsl -t php80  > NUL 2>&1
wsl -t php74  > NUL 2>&1
wsl -t php73  > NUL 2>&1
wsl -t php72  > NUL 2>&1
wsl -t php71  > NUL 2>&1
wsl -t php70  > NUL 2>&1

call wait.cmd > NUL 2>&1
wsl -t data   > NUL 2>&1
call wait.cmd > NUL 2>&1

rem Above does not seem to work, so we do a complete shutdow of WSL now.
wsl --shutdown
call wait.cmd > NUL 2>&1

cd /D "%oldDir%"

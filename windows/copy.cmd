rem
rem wsl support script
rem

wsl -d %1 -u root -- mkdir -p  /wsl/%2
wsl -d %1 -u root -- chmod 777 /wsl
wsl -d %1 -u root -- chmod 777 /wsl/%2

sleep 1

copy "%~dp0\..\%2\*.sh" \\wsl$\%1\wsl\%2

wsl -d %1 -u root -- dos2unix  /wsl/%2/*.sh 
wsl -d %1 -u root -- chmod 777 /wsl/%2/*.sh

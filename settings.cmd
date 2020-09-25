rem
rem Settings for wsl2_php_xx
rem


rem Location for the virtal HD's files of the WSL distros, 
rem must have 8 GB free space for Debian or 12 GB for Ubuntu.
rem
rem set wsl=%USERPROFILE%\wsl
set wsl=d:\wsl

rem The WSL image thats the base of all instances
rem 
rem Currently only Ubunbtu 20.04 and Debian 10 are suported
rem
rem Ubuntu: https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64-wsl.rootfs.tar.gz
rem Debian: https://salsa.debian.org/debian/WSL/-/raw/master/x64/install.tar.gz
rem 
set image=https://salsa.debian.org/debian/WSL/-/raw/master/x64/install.tar.gz


rem The GIT repository that contains the PHP application.
rem
set app_repo=https://github.com/Herbert256/wsl2-phpxx_demo-app.git

rem The installation script of the PHP application.
rem
set app_install=install/install.sh



rem The supported PHP version's
rem
set php_80=https://downloads.php.net/~pollita/php-8.0.0beta4.tar.gz
set php_74=https://www.php.net/distributions/php-7.4.10.tar.xz           
set php_73=https://www.php.net/distributions/php-7.3.22.tar.xz      
set php_72=https://www.php.net/distributions/php-7.2.32.tar.xz  
set php_71=https://www.php.net/distributions/php-7.1.33.tar.xz
set php_70=https://www.php.net/distributions/php-7.0.33.tar.xz


rem Create the directories
rem
if not exist "%wsl%"     mkdir "%wsl%"	  
if not exist "%wsl%\log" mkdir "%wsl%\log" 

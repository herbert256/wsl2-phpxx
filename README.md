# WSL2-PHPxx 

The concept:
* Create a different WSL2 distro for each PHP 8.0, 7.4, 7.3, 7.2, 7.1, 7.0 versions.
* Create a exta WSL2 distro that contains the shared data for those PHP distros.

```
C:\Users\herbert>wsl -l -v
  NAME     STATE           VERSION
* data     Running         2
  php70    Running         2
  php74    Running         2
  php73    Running         2
  php71    Running         2
  php80    Running         2
  php72    Running         2
```

There are 2 services running on the data distro, Mariadb and MemcacheD, Apache is running on every PHP distro, with the default WSL2 setup that every service is avalable under localhost (including the Windows host) that makes below services available everywhere.

```
data@data:/mnt/c/Users/herbert$ sudo netstat -plnt
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 127.0.0.1:3306          0.0.0.0:*               LISTEN      160/mariadbd
tcp        0      0 127.0.0.1:11211         0.0.0.0:*               LISTEN      235/memcached
tcp        0      0 127.0.0.1:1070          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1071          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1072          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1073          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1074          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1080          0.0.0.0:*               LISTEN      -
```

This means you can use below URL's in the browser on your Windows host (the last 2 digits gives the PHP version that that WSL2 distro is using)

* http://localhost:1080
* http://localhost:1074
* http://localhost:1073
* http://localhost:1072
* http://localhost:1071
* http://localhost:1070


## PHP

PHP is 6 times compiled from source (you have the time to drink a beer pr two during install)

The compilation is done 6 times with the same ./configure command, it works, but I see some errors at older PHP versions. Until now I have only tested my stuff under PHP 8.0 and PHP 7.4

It's a ToDo to give every PHP version it's own ./configure statement. 


## Where am I ?

I found out that if you have multiple WSL2 distros, it can sometime a bit confusing on wich one you are working. For this reason the hostname and the default user has the same name as the distro name. Most of the time you see at least one of those 3 on your screen.


## WSL2

Before installation you need to setup WSL2 on your Windows 10 host, see below page for this.

* https://docs.microsoft.com/en-us/windows/wsl/install-win10

If you are new with WSL2, then below articles are a great introduction to it

* https://partlycloudy.blog/2020/06/05/wsl2-making-windows-10-the-perfect-dev-machine/
* https://www.sitepoint.com/wsl2/
* https://most-useful.com/ubuntu-20-04-desktop-gui-on-wsl-2-on-surface-pro-4/


## Installation

* Set the variables in the script `settings.cmd`
* Run the script `install.cmd`
* Wait ... wait ...

Make sure you give the first variable %wsl% in `settings.cmd` the right value. The diskspace needed at that location is 10 GB when you use Debian as base and 16 GB is you use Ubuntu as base.

It can take some time, compiling 6 PHP versions from source takes time.

Problems during install? The installation script has no error handling, so if one of the first steps fails, then all other steps after it will also fail. There is extensive logging, so you have to do some digging in %wsl%\log\ if it does not work.


## The data distro, the shared data for the 6 PHP distros

With WSL2 cross mounts, the folowing locations from distro data are also available on the PHP distros
* /app/
* /var/www/
If you make a change in those 2 locaties, you make it automatically available in all Distros

The same for Mariadb and Memcached, you can use those services from the data distro on every PHP distro

Maybe the /var/www directory make you think Apache is installed on the data distro, thats not the case, Apache is only installed on the PHP distros.


## wsl2-phpxx_demo_app

Default a small PHP app is installed, to test the working of wsl2-phpxx.

https://github.com/Herbert256/wsl2-phpxx_demo-app



## Security

Bad, use it only on your personal PC / Laptop. For example, the admin user `data` for MariaDB has no password, security wise, that could be better. For this reason all servers are only binded to port 127.0.0.1, only you on your own laptop can acces it.


## Conclusion

It's nuts, a Docker solution would be much more elegant, but it is was fun to setup it myself, and I learned how WSL2 works.

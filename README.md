# WSL2 / PHP 7.0, 7.1, 7.2, 7.3, 7.4 & 8.0

The idea: 
* Create a different WSL2 instance for every PHP version. 
* Create a exta WSL2 instance that contains the data for those PHP instances.

After installation below URL's are available. The last 2 digits are the PHP version.

* http://localhost:1080
* http://localhost:1074
* http://localhost:1073
* http://localhost:1072
* http://localhost:1071
* http://localhost:1070


## WSL2

It uses the Windows Subsystem for Linux version 2.

* https://docs.microsoft.com/en-us/windows/wsl/install-win10

If you are new with WSL2, then below articles are a great introduction to it

* https://partlycloudy.blog/2020/06/05/wsl2-making-windows-10-the-perfect-dev-machine/
* https://www.sitepoint.com/wsl2/
* https://most-useful.com/ubuntu-20-04-desktop-gui-on-wsl-2-on-surface-pro-4/


## Installation

* Set the variables in the script `settings.cmd`
* Run the script `install.cmd`


## Resource usage

The disk space usage is crazy, 6 GB if you use Debian 10 as base, 13 GB if you use Ubuntu 20.04 as base.

A Docker solution would be much more elegant, but it is fun do setup it yourself.


## Security

Bad, use it only on your personal PC / Laptop.

For example, the admin user `data` for MariaDB has no password, security wise, that could be better ...

For this reason all servers are only binded to port 127.0.0.1, it is only accessible from your own PC.
```
sudo netstat -plnt

Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 127.0.0.1:1070          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1071          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1072          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1073          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1074          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1080          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:3306          0.0.0.0:*               LISTEN      -
```

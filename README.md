# WSL2 / PHP 7.0, 7.1, 7.2, 7.3, 7.4 & 8.0

After installation below URL's are available

* http://localhost:1080
* http://localhost:1074
* http://localhost:1073
* http://localhost:1072
* http://localhost:1071
* http://localhost:1070

The last 2 digits are the PHP version.

## Installation

* Set the variables at the top of the script `install\settings.cmd`
* Run the script `install.cmd`

## Data repository

The data respository is installed in directory `app` at WSL2 distro `data`, Sublime is installed.
```
wsl -d data
subl /app
```
Managing it it from your Windows host from locaton `\\wsl$\data\app` seems also working fine (adding that as a local repository in SourceTree works for example)

## Security

Admin user `data` for MariaDB with no password, security wise, that could be better ...

For this reason all servers are only binded to port 127.0.0.1, it is only accessible from your own PC.
```
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 127.0.0.1:1070          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1071          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1072          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1073          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1074          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:1080          0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:3306          0.0.0.0:*               LISTEN      -


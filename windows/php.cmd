rem
rem wsl support script
rem

wsl --import php%1 "%wsl%\php%1" "%wsl%\phpxx.tar" > "%wsl%\log\%1_import.txt"    2>&1

wsl -d php%1 -u root -- /wsl/base/adduser.sh php%1 > "%wsl%\log\%1_user.txt"      2>&1
wsl -d php%1 -u root -- /wsl/php/compile.sh %1 %2  > "%wsl%\log\%1_compile.txt"   2>"%wsl%\log\%1_compile_error.txt"
wsl -d php%1 -u root -- /wsl/php/apache.sh %1 %2   > "%wsl%\log\%1_apache.txt"    2>&1
wsl -d php%1 -u root -- /wsl/php/yaml.sh           > "%wsl%\log\%1_yaml.txt"      2>&1
wsl -d php%1 -u root -- /wsl/php/memcached.sh      > "%wsl%\log\%1_memcached.txt" 2>&1
wsl -d php%1 -u root -- /wsl/base/exits.sh php%1   > "%wsl%\log\%1_exits.txt"     2>&1

call windows\shrink.cmd php%1                      > "%wsl%\log\%1_shrink.txt"    2>&1

wsl -t php%1                                       > "%wsl%\log\%1_terminate.txt"  2>&1
call wait.cmd > NUL 2>&1

wsl -d php%1 /start                                > "%wsl%\log\%1_start.txt"      2>&1
call wait.cmd > NUL 2>&1

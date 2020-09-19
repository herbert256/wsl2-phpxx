rem
rem wsl support script
rem

wsl --import phpxx "%wsl%\phpxx" "%wsl%\base.tar" > "%wsl%\log\php_import.txt" 2>&1

call windows\copy.cmd phpxx php                   > "%wsl%\log\php_copy.txt"   2>&1

wsl -d phpxx /wsl/php/base.sh                     > "%wsl%\log\php_base2.txt"  2>&1

call windows\mount.cmd phpxx                      > "%wsl%\log\php_mount.txt"  2>&1

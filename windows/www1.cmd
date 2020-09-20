rem
rem wsl support script
rem

call windows\copy.cmd data www          > "%wsl%\log\www_copy.txt"      2>&1

wsl -d data -u root -- /wsl/www/www1.sh > "%wsl%\log\www_start_wsl.txt" 2>&1

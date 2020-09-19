rem
rem wsl support script
rem

wsl -d data -u root -- /wsl/www/www.sh %1 > "%wsl%\log\www_%1_wsl.txt" 2>&1
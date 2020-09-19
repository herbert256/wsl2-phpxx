rem
rem wsl support script
rem

call windows\copy.cmd data www                    > "%wsl%\log\www_copy.txt"  2>&1

wsl -d data -u root -- /wsl/www/html.sh %app_www% > "%wsl%\log\www_html.txt" 2>&1

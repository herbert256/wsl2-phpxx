rem
rem wsl support script
rem

call windows\copy.cmd data app                                   > "%wsl%\log\app_copy.txt"    2>&1

wsl -d data -u root -- /wsl/app/init.sh %app_repo% %app_install% > "%wsl%\log\app_init.txt"     2>&1
wsl -d data -u data -- /wsl/app/install.sh %app_install%         > "%wsl%\log\app_install.txt" 2>&1

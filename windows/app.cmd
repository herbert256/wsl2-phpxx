rem
rem wsl support script
rem

call windows\copy.cmd data app                           > "%wsl%\log\app_copy.txt"    2>&1

wsl -d data -u root -- rm -Rf /app                       > "%wsl%\log\app_rm.txt"      2>&1
wsl -d data -u root -- /wsl/app/git.sh %app_repo%        > "%wsl%\log\app_git.txt"     2>&1
wsl -d data -u root -- /wsl/app/install.sh %app_install% > "%wsl%\log\app_install.txt" 2>&1

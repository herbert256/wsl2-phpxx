rem
rem wsl support script
rem

del "%wsl%\base.tar"
del "%wsl%\phpxx.tar"

wsl -d data -u root -- /wsl/base/exits.sh data > "%wsl%\log\exits_main.txt"   2>&1
call windows\shrink.cmd data                   > "%wsl%\log\exits_shrink.txt" 2>&1

wsl --shutdown	

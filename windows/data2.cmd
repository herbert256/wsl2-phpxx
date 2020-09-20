rem
rem wsl support script
rem

wsl -d data -u root -- /wsl/base/exits.sh data > "%wsl%\log\data_exits.txt"   2>&1

call windows\shrink.cmd data                   > "%wsl%\log\data_shrink.txt" 2>&1

wsl -t data                                    > "%wsl%\log\data_terminate.txt" 2>&1
call wait.cmd > NUL 2>&1

wsl -d data /start                             > "%wsl%\log\data_start.txt" 2>&1
call wait.cmd > NUL 2>&1
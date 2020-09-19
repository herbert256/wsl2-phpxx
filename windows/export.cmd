rem
rem wsl support script
rem

@del /Q "%wsl%\%1.tar" > NUL 2>&1

wsl --terminate %1             > "%wsl%\log\export_%1_terminate.txt"  2>&1
wsl --export %1 "%wsl%\%1.tar" > "%wsl%\log\export_%1_export.txt"     2>&1
wsl --unregister %1            > "%wsl%\log\export_%1_unregister.txt" 2>&1
rmdir "%wsl%\%1"               > "%wsl%\log\export_%1_rmdir.txt"      2>&1

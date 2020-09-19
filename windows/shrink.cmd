rem
rem wsl support script
rem

@del /Q /S "%wsl%\%1.tar" > nul 2>&1

wsl -t %1 
wsl --export %1 "%wsl%\%1.tar"
wsl --unregister %1
wsl --import %1 "%wsl%\%1" "%wsl%\%1.tar"

del "%wsl%\%1.tar"

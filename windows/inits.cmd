rem
rem wsl support script
rem

if not exist "%wsl%"     mkdir "%wsl%"	  
if not exist "%wsl%\log" mkdir "%wsl%\log" 

del /Q /S "%wsl%\log\*" > nul 2>&1
		
wsl --unregister data  > nul 2>&1
wsl --unregister phpxx > nul 2>&1
wsl --unregister php80 > nul 2>&1
wsl --unregister php74 > nul 2>&1
wsl --unregister php73 > nul 2>&1
wsl --unregister php72 > nul 2>&1
wsl --unregister php71 > nul 2>&1
wsl --unregister php70 > nul 2>&1

rmdir /S /Q "%wsl%\data"  > nul 2>&1
rmdir /S /Q "%wsl%\phpxx" > nul 2>&1
rmdir /S /Q "%wsl%\php80" > nul 2>&1
rmdir /S /Q "%wsl%\php74" > nul 2>&1
rmdir /S /Q "%wsl%\php73" > nul 2>&1
rmdir /S /Q "%wsl%\php72" > nul 2>&1
rmdir /S /Q "%wsl%\php71" > nul 2>&1
rmdir /S /Q "%wsl%\php70" > nul 2>&1

del /Q "%wsl%\base.tar"  > nul 2>&1
del /Q "%wsl%\phpxx.tar" > nul 2>&1

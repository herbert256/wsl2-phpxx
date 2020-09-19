rem
rem wsl support script
rem

if not exist "%wsl%\image.tar.gz" curl %image% --output "%wsl%\image.tar.gz"

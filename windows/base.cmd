rem
rem wsl support script
rem

wsl --import base d:\wsl\base "%wsl%\image.tar.gz" > "%wsl%\log\base_import.txt" 2>&1

wsl -d base -u root -- apt update                  > "%wsl%\log\base_apt-1.txt"  2>&1
wsl -d base -u root -- apt -y upgrade              > "%wsl%\log\base_apt-2.txt"  2>&1
wsl -d base -u root -- apt -y install dos2unix     > "%wsl%\log\base_apt-3.txt"  2>&1

call windows\copy.cmd base base                    > "%wsl%\log\base_copy.txt"   2>&1
wsl -d base -u root -- /wsl/base/base.sh           > "%wsl%\log\base_base.txt"   2>&1

call windows\export.cmd base                       > "%wsl%\log\base_export.txt" 2>&1

rem
rem wsl support script
rem

wsl -t %1

wsl -d %1 -u root -- /wsl/base/mount.sh %1

@echo off

REM cambia la ip de la interfaz de red "wifi"

arp -d *

ping localhost >nul
netsh interface ip set address "wifi" static 192.168.0.1%random:~-2% 255.255.254.0 192.168.1.1 1
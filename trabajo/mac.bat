@echo off

REM cambia tu mac a otra

ping 127.0.0.1>nul

set mac=002170db18ae

reg add hklm\system\controlset001\control\class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001 /t reg_sz /v NetworkAddress /d %mac% /f

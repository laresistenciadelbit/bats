@echo off

REM script para crear una variable de entorno remotamente
REM en este caso introducimos servidores de licencias en una variable de entorno nueva


REM HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment

set LIC=puerto@servidor1;puerto@servidor2;puerto@servidor3

echo .-[ Introduce equipo a instalar licencia:
echo ..
echo .
set /p EQUIPO=
echo .
psexec \\%EQUIPO% reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /t reg_sz /v "lm_license_file" /d %LIC% /f

pause
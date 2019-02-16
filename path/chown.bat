@echo off
REM toma el control de un fichero o carpeta de la que no tengamos permisos

takeown /F %1 /R
REM icacls %1 /grant:r everyone:f /t
icacls %1 /grant:r todos:f /t
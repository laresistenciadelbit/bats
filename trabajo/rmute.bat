@echo off
set EQUIPO=%1
if defined EQUIPO goto DEFINED

REM Silencia los altavoces del equipo remoto
REM REQUIERE: psexec y nircmd (de windows sysinternals tools y herramienta nircmd)

echo . . . . . . . . . . .
echo .-[ Introduce equipo:
echo ..
echo .
set /p EQUIPO=
echo .


psexec \\%EQUIPO% nircmd mutesysvolume 2

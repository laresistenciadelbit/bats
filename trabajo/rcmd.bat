@echo off
set EQUIPO=%1
if defined EQUIPO goto DEFINED

REM abre consola remota en equipo destino
REM REQUIERE: psexec (de windows sysinternals tools)

echo . . . . . . . . . . .
echo .-[ Introduce equipo:
echo ..
echo .
set /p EQUIPO=
echo .

:DEFINED

psexec \\%EQUIPO% cmd
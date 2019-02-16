@echo off
set EQUIPO=%1
if defined EQUIPO goto DEFINED

REM ejeqcuta programa remotamente
REM REQUIERE: psexec (windows sysinternal tools)

echo . . . . . . . . . . .
echo .-[ Introduce equipo:
echo ..
echo .
set /p EQUIPO=
echo .

:DEFINED


:D

echo .-[ Introduce comando/programa:
echo ..
echo .
set /p PROG=
echo .

psexec \\%EQUIPO% -i %PROG%

goto D
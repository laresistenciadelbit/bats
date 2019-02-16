@echo off

REM desfragmenta equipo remoto con deffragler
REM REQUISITOS(en local): df.exe (deffragler)

set EQUIPO=%1
if defined EQUIPO goto DEFINED

echo . . . . . . . . . . .
echo .-[ Introduce equipo a defragmentar:
echo ..
echo .
set /p EQUIPO=
echo .

:DEFINED

copy D:\usuario\temp\df.exe \\%EQUIPO%\c$

psexec \\%EQUIPO% c:\df.exe c:
psexec \\%EQUIPO% c:\df.exe d:

del \\%EQUIPO%\c$\df.exe

pause
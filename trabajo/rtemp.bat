@echo off


REM Utiliza el bat "temp.bat" para limpiar todos los temporales del equipo remoto
REM REQUIERE: psexec.exe (windows sysinternal tools)

echo .-[ Introduce equipo a limpiar:
echo ..
echo .
set /p EQUIPO=
echo .

copy D:\usuario\temp\temp.bat \\%EQUIPO%\c$

psexec \\%EQUIPO% c:\temp.bat

del \\%EQUIPO%\c$\temp.bat

pause
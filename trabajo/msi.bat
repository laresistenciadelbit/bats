@echo off

set EQUIPO=%1
if defined EQUIPO goto DEFINED

REM instala paquete instalable msi remotamente a un equpo

echo . . . . . . . . . . .
echo .-[ Introduce equipo a instalar paquete MSI:
echo ..
echo .
set /p EQUIPO=
echo .

:DEFINED

echo .Introduce ruta del fichero (sin \ al final)
set /p ruta=
echo .Introduce nombre del fichero
set /p file=

copy /y %ruta%\%file% \\%EQUIPO%\c$\windows\temp
psexec \\%EQUIPO% -s  msiexec /i \\%EQUIPO%\c$\windows\temp\%file% /qn
del \\%EQUIPO%\c$\windows\temp\%file%
pause
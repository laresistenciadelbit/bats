@echo off

REM mata un proceso en todos los equipos remotos de la lista restantes.txt

SETLOCAL  ENABLEDELAYEDEXPANSION
set PROCESS=%1
if defined PROCESS goto DEFINED

echo . . . . . . . . . . .
echo .-[ Introduce proceso:
echo ..
echo .
set /p PROCESS=
echo . . . . . . . . . . .

:DEFINED

for /f %%i IN (restantes.txt) do (
 start taskkill /S %%i /F /IM %PROCESS%
)
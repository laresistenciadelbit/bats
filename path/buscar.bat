@echo off


REM busca fichero

if %1.==. goto D

dir /b /s /a | find "%1"
goto end

:D
echo .
echo ..elemento a buscar:
set /p buscar=

dir /b /s /a | find "%buscar%"

:end

rem exit
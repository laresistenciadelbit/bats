@echo off

REM Busca en una lista de equipos remotos un fichero o directorio
REM ejemplo de ruta: Archivos de programa\sncr\SNCRShell.exe

set RUTA=%1
if defined RUTA goto DEFINED

echo . . . . . . . . . . .
echo .-[ Introduce ruta:
echo ..
echo .
set /p RUTA=
echo .

:DEFINED


 echo -=[ buscamos!:

for /f %%i IN (restantes.txt) do (

	if exist %%i\c$ echo BUSCANDO EN: %%i
	if exist "%%i\c$\%RUTA%" echo [[[[\____AQUI!]]]]
	if exist "%%i\c$\%RUTA%" echo %%i>>%temp%\encontrados.log

)
%temp%\encontrados.log
exit

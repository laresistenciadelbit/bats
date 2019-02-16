@echo off

REM elimina los ficheros temporales de todos los usuarios y de la carpeta de windows

if not exist "%userprofile%\.." goto ENDFAIL

set FILTRO=All

dir /b "%userprofile%\.." > %temp%\users.log
for /f %%i IN (%temp%\users.log) DO (
 if NOT %FILTRO% == %%i 	echo .
 if NOT %FILTRO% == %%i 	echo .
 if NOT %FILTRO% == %%i 	echo ..Eliminando temporales de %%i
 if NOT %FILTRO% == %%i	echo ..............................
 if NOT %FILTRO% == %%i	echo .
 if NOT %FILTRO% == %%i	del /f /s /q /a "%userprofile%\..\%%i\config~1\temp"
 if NOT %FILTRO% == %%i	del /f /s /q /a "%userprofile%\..\%%i\config~1\Archiv~1"
 if NOT %FILTRO% == %%i	del /f /s /q /a "%userprofile%\..\%%i\cookies"
	
 if NOT %FILTRO% == %%i	rmdir /s /q "%userprofile%\..\%%i\config~1\temp"
 if NOT %FILTRO% == %%i	mkdir "%userprofile%\..\%%i\config~1\temp"
)

if exist %windir%\temp echo ..Eliminando temporales de windows
if exist %windir%\temp echo ..................................
if exist %windir%\temp del /f /s /q /a %windir%\temp\*

pause
goto end
:ENDFAIL

echo .
echo ..no existe la carpeta de usuarios o la variable de la misma.
exit

:end
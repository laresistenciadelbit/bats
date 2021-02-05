@echo off

REM script al que le pasamos un vídeo como parámetro y le decimos
REM por consola o parámetro desde dónde hasta dónde recortaremos un vídeo

REM usar la última versión posible de ffmpeg! sino fallará la opción -to al recortar
REM última version binario windows : https://ffmpeg.zeranoe.com/builds/

set ruta_ffmpeg=s:
set output=n:\output

set video=%~s1
set start_time=%2
set end_time=%3
if defined end_time goto DEFINED

if not defined video (
	echo no se ha pasado un vídeo como parámetro
	pause
	exit
)

echo .
echo The timestamps need to be in HH:MM:SS.xxx format or in seconds (s.msec)
echo ..
echo .-[ Tiempo inicio:
set /p start_time=
echo .-[ Tiempo fin:
set /p end_time=


:DEFINED

REM sacamos el nombre del fichero a partir de la ruta completa
for /F %%i in ("%video%") do %ruta_ffmpeg%\ffmpeg -i "%video%" -ss %start_time% -to %end_time% -c copy "%output%\%%~nxi"

pause

start %output%
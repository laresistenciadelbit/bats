@echo off

REM chat remoto que se conecta al cryptcat de tu equipo a la escucha en el puerto MIPUERTO
REM REQUISITOS(en local): ccat.exe (cryptcat)

set EQUIPO=%1

set MIEQUIPO=NOMBREDEMIEQUIPO
set MIPUERTO=22

if defined EQUIPO goto DEFINED

echo . . . . . . . . . . .
echo .-[ Introduce equipo:
echo ..
echo .
set /p EQUIPO=
echo .

:DEFINED

start ccat -v -l -p 22

if exist \\%EQUIPO%\c$\windows\system32\ccat.exe (
	psexec \\%EQUIPO% -s -i ccat.exe %MIEQUIPO% %MIPUERTO%
) else (
	psexec \\%EQUIPO% -s -i -c ccat.exe %MIEQUIPO% %MIPUERTO%
)


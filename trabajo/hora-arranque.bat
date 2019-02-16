@echo off

REM saca una lista de la hora en que han arrancado todos los equipos remotos de la lista restantes.txt

for /f %%i IN (restantes.txt) DO (
echo %%i
echo %%i>>arranques.txt
systeminfo /s %%i | find "arranque del">>arranques.txt
)
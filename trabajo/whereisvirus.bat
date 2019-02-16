@echo off

REM Busca en una lista de equipos remotos un fichero "virus" (Windll_32.exe)
REM y lo loguea en un fichero de %temp%


 echo -=[ buscamos!:

for /f %%i IN (restantes.txt) do (

	if exist %%i\c$ echo BUSCANDO EN: %%i
	if exist %%i\c$\Windll_32.exe echo [[[[VIRUS]]]]
	if exist %%i\d$\Windll_32.exe echo [[[[VIRUS]]]]
	if exist %%i\c$\Windll_32.exe echo %%i>>%temp%\virus_windll32.txt
	if exist %%i\d$\Windll_32.exe echo %%i>>%temp%\virus_windll32.txt

)

pause
exit

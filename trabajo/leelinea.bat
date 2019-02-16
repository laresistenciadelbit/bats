SETLOCAL  ENABLEDELAYEDEXPANSION
@echo off

REM obtiene la línea indicada de un fichero y la vuelca en otro

echo introduce fichero:
set /p file=

echo introduce fichero de salida
set /p salida=

echo introduce numero de linea:
set /p elec=

set /a num=0
for /f %%i IN (%file%) DO (
 rem if !num! eq 
	set /a num=!num!+1
	if %elec% == !num! echo %%i > %salida%
	if %elec% == !num! goto end
echo %elec% !num!
)

:end
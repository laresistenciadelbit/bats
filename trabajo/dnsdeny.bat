@echo off
SETLOCAL  ENABLEDELAYEDEXPANSION
echo ....................................
echo ....Baneo de direcciones remotas....
echo ....................................
echo ...
echo ..
echo .
REM REQUISITOS(en local): psexec (de windows sysinternals tools)

set user=MIUSUARIO
echo usuario: %user% , contraseña:
set /p pass=

echo .......
echo ..host:
echo .
set /p HOST=

psexec \\%HOST% -u %user% -p %pass% "ipconfig /displaydns" > dns-1.log

type dns-1.log | grep "Nombre de registro" | cut -f 2 -d":" | cut -f 2 -d" " > dns.log

del dns-*.log


echo ........................................
echo ......Lista de direcciones remotas......
echo ........................................
echo ...
echo ..
echo .

set /a num=0
for /f %%i IN (dns.log) DO (
	set /a num=%num%+1
	echo %num% - %%i
)

:D
	echo .
	echo ..Elige un numero:
	set /p elec=

	set /a num2=0
	for /f %%i IN (dns.log) DO (
		set /a num2=!num2!+1
		if %elec% equ !num2! echo 174.133.14.74 %%i >> \\%HOST%\c$\windows\system32\drivers\etc\hosts
	)
	psexec \\%HOST% -u %user% -p %pass% "ipconfig /flushdns"
goto D
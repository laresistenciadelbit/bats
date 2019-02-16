@echo off

REM lista las conexiones actuales cada 5 segundos

rem netstat 5 -b -p TCP

:D
	netstat -b -p TCP
	ping -n 5 localhost > nul
	cls
goto D

exit
@echo off
rem netstat 5 -b -p TCP

REM lista tanto ficheros abiertos como conexiones cada 5 segundos (con filtros personalizados usando grep)
REM REQUIERE: psfile.exe y grep.exe

:D
		rem :5357 -- host discovery
	psfile.exe | grep -v Locks | grep -v Access | grep -v "Files opened"
	netstat -b -o -p TCP | grep -v http | grep -v :5357 | grep -v Proto | grep -v hercules | grep -v proxy | grep -v propiedad | grep -v activas | grep -v PAT_NET | grep -v OUTLOOK | grep -v spoolsv | grep -v IEXPLORE | grep -v iexplore | grep -v titan | grep -v ABSOLON | grep -v 7570-EADS | cut -d: -f2,3 | grep -v tcscd | grep -v corvus | grep -v tcsex | grep -v tcspriv | grep -v tcsfsv | grep -v tcspsw | grep -v mstsc. | grep -v tcsepov

	ping -n 5 localhost > nul
	cls
goto D

exit
@echo off

REM limpia el psexec de los equipos remotos en la lista "restantes.txt"
REM ya que cada ejecución remota de psexec hace que se copie el ejecutable al sistema

for /f %%k IN ('type restantes.txt') DO (
   echo [+]%%k
   if exist "%%k\c$\windows\psexesvc.exe" (
    del "%%k\c$\windows\psexesvc.exe"
   ) else (
	if exist "%%k\c$\WINNT\psexesvc.exe" (
	    del "%%k\c$\WINNT\psexesvc.exe"
	)
   )
)
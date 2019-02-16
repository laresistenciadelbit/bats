@echo off
::	BAT QUE HACE UN CD EN ACCESOS DIRECTOS
cl.vbs %1
for /f "tokens=* delims=@" %%i IN (%temp%\x) DO set link="%%i"
REM HACER OTRO FOR FILTRANDO EL LINK PARA ENTRAR EN LA UNIDAD DEL ACCESO DIRECTO
cd %link%
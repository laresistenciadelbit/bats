@echo off

REM añade regla al firewall

echo .-[ Introduce nombre de regla:
set /p nombre=
echo .
echo .-[ Introduce ruta completa:
set /p ruta=
echo -------------------------------
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\AuthorizedApplications\List /v %ruta% /t REG_SZ /d "%ruta%:*:Enabled:%nombre%" /f
pause
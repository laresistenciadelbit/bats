@echo off

REM te habilita como usuario de escritorio remoto en otro equipo y arranca el servicio
REM REQUISITOS(en local): psexec (de windows sysinternals tools)

set user=MIUSUARIO

echo pc:
set /p pc=
echo usuario remoto:
set /p ruser=
echo dominio:
set /p dominio=

psexec \\%pc% net start RemoteRegistry

set cmd=net localgroup "usuarios de escritorio remoto" "%dominio%\%ruser%" /add
psexec \\%pc% %cmd%

reg add "\\%pc%\hklm\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f


pause
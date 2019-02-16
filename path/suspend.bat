@echo off

REM suspende el equpo tras x segundos
REM requiere: sleep.exe


sleep %1

Rundll32.exe powrprof.dll, SetSuspendState
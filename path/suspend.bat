@echo off

REM suspende el equpo tras x segundos

TIMEOUT /T %1

Rundll32.exe powrprof.dll, SetSuspendState
@echo off

REM lista ficheros abiertos en memoria
REM REQUIERE: psfile.exe (de windows sysinternals tools)

:D
psfile.exe | grep -v Locks | grep -v Access
ping localhost>nul
cls
goto D
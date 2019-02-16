@echo off
SETLOCAL  ENABLEDELAYEDEXPANSION
set EQUIPO=%1
if defined EQUIPO goto DEFINED

REM ver que usuario está logueado en un equipo remoto

echo . . . . . . . . . . .
echo .-[ Introduce equipo:
echo ..
echo .
set /p EQUIPO=
echo . . . . . . . . . . .

:DEFINED

set FILTRO=All

for /f %%i IN ('dir /b \\%EQUIPO%\c$\docume~1') DO (
  if NOT %FILTRO% == %%i echo %%i
  if NOT %FILTRO% == %%i if exist \\%EQUIPO%\c$\docume~1\%%i\NTUSER.DAT type \\%EQUIPO%\c$\docume~1\%%i\NTUSER.DAT> NUL
  if NOT %FILTRO% == %%i if errorlevel 1 msg %username% "El usuario  < %%i > esta logueado"
)
for /f %%i IN ('dir /b \\%EQUIPO%\c$\users') DO (
  if NOT %FILTRO% == %%i echo %%i
  if NOT %FILTRO% == %%i if exist \\%EQUIPO%\c$\docume~1\%%i\NTUSER.DAT type \\%EQUIPO%\c$\docume~1\%%i\NTUSER.DAT> NUL
  if NOT %FILTRO% == %%i if errorlevel 1 msg %username% "El usuario  < %%i > esta logueado"
)


rem echo \\%EQUIPO%\c$\docume~1\%%i\NTUSER.DAT
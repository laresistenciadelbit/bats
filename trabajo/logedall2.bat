@echo off

echo .-[ Introduce usuario:
echo ..
echo .
set /p USER=
echo .

REM ver en qué equipos de la lista restantes.txt está logueado un usuario

for /f %%k IN ('type restantes.txt') DO (
   echo [+]%%k
   if exist %%k\c$\docume~1\%USER%\NTUSER.DAT (
   @type %%k\c$\docume~1\%USER%\NTUSER.DAT> NUL
   if errorlevel 1 echo \___Logued
   if errorlevel 1 echo %%k--%USER%>>%temp%\%USER%.txt
   )
)

"%temp%\%USER%.txt"
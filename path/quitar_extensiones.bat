@echo off

REM quita todas las extensiones de la carpeta pasada como parámetro
REM tip: se puede arrastrar la carpeta sobre el bat para recibirse como parámetro
REM .no es recursivo
REM .si se ejecuta sin parámetros no hace nada, ya que no existen ficheros que comiencen por "\"

for /f %%f IN ('dir %1 /b') do (ren %1\%%f %%~nf )

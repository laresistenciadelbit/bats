@echo off

REM borra ficheros temporales de todos los equipos de la lista "restantes.txt"

for /f %%i IN (restantes.txt) do (
 del /f /s /q /a %%i\c$\windows\temp\*
)
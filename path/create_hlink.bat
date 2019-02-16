@echo off

REM crea accesos directos de unión fuerte (hard links)

echo origen:
set /p origen=

echo destino:
set /p destino=

mklink /h %destino% %origen%
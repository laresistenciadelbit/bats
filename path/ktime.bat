@echo off

REM mata proceso tras x segundos
REM ktime(tiempo en segundos , proceso.exe)


sleep %1

taskkill /f /im %2
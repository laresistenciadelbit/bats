@echo off

REM añade entradas estáticas a la tabla arp de la interfaz "wifi"
REM script para autoejecutar al inicio del sistema

TIMEOUT /T 4

arp -d *

netsh interface ipv4 add neighbors "wifi" 192.168.1.1 18-17-16-11-19-18
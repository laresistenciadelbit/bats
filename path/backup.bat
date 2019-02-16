@echo off

REM habiendo creado una tarea con schtasks previamente, este script será
REM lanzado por la propia tarea cada x horas para hacer una copia de 
REM seguridad en una unidad usb externa.
REM Una vez hecho el backup, la unidad externa será deshabilitada hasta
REM que vuelva a iniciarse la tarea del siguiente backup.

REM schtasks /create  /sc HOURLY /MO 6 /TN "backup" /TR backup.bat

REM devcon find USB*
REM devcon disable "USB\VID_xxxx&PID_yyyy"
REM devcon enable "USB\VID_xxxx&PID_yyyy"

devcon enable USBSTOR\DiskUSBDisk_RunDisk_________1.00

robocopy /e /mir p:\carpeta x:\carpeta

robocopy /e /mir p:\carpeta2 x:\carpeta2

robocopy /e /mir p:\carpeta3 x:\carpeta3

robocopy /e /mir P:\Documents\carpeta4 x:\carpeta4

robocopy /e /mir %userprofile%\desktop x:\desktop

devcon disable USBSTOR\DiskUSBDisk_RunDisk_________1.00

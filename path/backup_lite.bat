@echo off

REM hace un backup únicamente de los ficheros más pequeños de cierto tamaño
REM de esta manera almacenamos lo más importante en muy poco espacio
REM también hacemos una copia de seguridad del árbol de todos los ficheros y directorios
REM por último lo sube por ftp con la configuración escrita en configuracionftp.dat y la contraseña de la variable pass

set pass=contraseña

REM configuracionftp.dat tiene este formato:
REM  user USUARIO@SERVIDOR
REM  CONTRASEÑA
REM  put RUTADELZIP.ZIP
REM  quit

	REM schtasks /create  /sc HOURLY /MO 9 /TN "backup_lite" /TR backup_lite.bat

set carpeta1=c:\carpeta1
set carpeta2=c:\carpeta2
set carpeta3=c:\Documents\carpeta3
set desktop=%userprofile%\desktop

set bkp_folder=c:\litebkp
set zipFILE=c:\mysyncBKP.zip

tree /f %mysync%>%mysync%\tree.txt

robocopy /e /mir %carpeta1% %bkp_folder%\carpeta1 *.bat *.lnk *.txt *.h *.c *.cpp *.java *.ino *.pde *.php *.url *.gradle *.xml /max:24000
robocopy /e /mir %carpeta2% %bkp_folder%\carpeta2 *.txt *.java *.doc *.docx *.m *.h *.c *.cpp /max:100000
robocopy /e /mir %carpeta3% %bkp_folder%\carpeta3 *.bat *.lnk *.txt *.h *.c *.cpp *.java *.ino *.pde *.php *.url /max:16000
robocopy /e /mir %desktop% %bkp_folder%\desktop *.bat *.lnk *.txt *.h *.c *.cpp *.java *.ino *.pde *.php *.url /max:16000

if exist %zipFILE%tmp del %zipFILE%tmp
if exist %zipFILE% del %zipFILE%
7z a -p%pass% -tzip %zipFILE%tmp %bkp_folder%
7z a -p%pass% -tzip %zipFILE% %zipFILE%tmp

ftp -n -s:c:\configuracionftp.dat servidor.website

del %zipFILE%tmp

REM del %zipFILE%

rem del /f /s /q %bkp_folder%
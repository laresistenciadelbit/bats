@echo off

REM script que al poner en ejecutar la letra c seguida de una de las siguientes,
REM abre el navegador en la página que queremos.
REM por ejemplo, inicio+R y escribimos c e , abrirá automáticamente el tiempo en madrid


IF "%1"=="e" (
  start http://www.eltiempo.es/madrid.html?v=por_hora
) ELSE IF "%1"=="m" (
  start https://www.meneame.net
) ELSE IF "%1"=="f" (
  start https://www.facebook.com
) ELSE IF "%1"=="t" (
  start https://thepiratebay.se
) ELSE IF "%1"=="u" (
  start https://moodle.uv.es
) ELSE IF "%1"=="y" (
  start https://youtube.com
) ELSE IF "%1"=="k" (
  start https://keep.google.com
) ELSE (
  start chrome
)
@echo off

REM script que al poner en ejecutar la letra c seguida de una de las siguientes,
REM abre el navegador en la p�gina que queremos.
REM por ejemplo, inicio+R y escribimos c e , abrir� autom�ticamente el tiempo en madrid

REM podemos poner cualquier otra palabra que no est� aqu� y duckduckgo se encargar� de abrirte la p�gina m�s coincidente 
REM \_ejemplo: si pones imdb, duckduckgo redireccionar� automa�ticamente a https://www.imdb.com

IF "%1"=="e" (
  start http://www.eltiempo.es/madrid.html?v=por_hora
) ELSE IF "%1"=="f" (
  start https://www.facebook.com
) ELSE IF "%1"=="t" (
  start https://thepiratebay.se
) ELSE IF "%1"=="y" (
  start https://youtube.com
) ELSE IF "%1"=="k" (
  start https://keep.google.com
) ELSE IF "%1"=="" (
  start chrome
) ELSE (
  start https://duckduckgo.com/?q=!ducky+%1
)
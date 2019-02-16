REM toma control de un directorio o carpeta

takeown /F %1 /R
icacls %1 /grant:r todos:f /t
@echo off

rem Resizes a image to 50%

set img=%1

echo ..
echo %img%
echo ,,

"c:\Software\imagemagick\mogrify.exe" -resize 50% %1
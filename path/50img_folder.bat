@echo off

rem Resizes folder images to 50%

cd %1
"s:\imagemagick\mogrify.exe" -path %1 -resize 50%% *
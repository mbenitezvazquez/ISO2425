@echo off
REM Autor: Mario Benítez Vázquez
REM Fecha: 10/11/24

set /p option=" Option 1:TXT ; Option 2:BAT  "
if %option% EQU 1 goto txt
if %option% EQU 2 goto bat

:txt
set /p nombre="Introduzca nombre fichero  "
echo > %nombre%.txt
pause


:bat
set /p name="Introduca nombre del archivo  "
echo > %name%.bat
pause


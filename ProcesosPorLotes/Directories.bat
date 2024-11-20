@echo off
rem Mario Benítez Vázquez
rem fecha:20/11/24
echo 1"Crear ficheros con nombre pedido al usuario"
echo 2"Mostrar el árbol de directorios de la carpeta de usuario"
echo 3"Mostrar archivos con extension txt
echo 4"Crear los directorios alfredoff, marinapg y ramonam en tu directorio actual"
echo 5"Copia el contenido de tu carpeta de usuario al Escritorio"

set /p option=" Option 1: crear fichero ; Option 2: tree  ; Option 3: extension; Option 4: directorios ; Option 5: copiar -->   "
if %option% EQU 1 goto file
if %option% EQU 2 goto tree
if %option% EQU 3 goto extension
if %option% EQU 4 goto directorios
if %option% EQU 5 goto copiar

:file
set /p namefile="Introduzca el nombre de fichero  "
echo > %namefile%.txt
pause

:tree
tree %USERPROFILE%
pause

:extension
dir/b *.txt
pause
:directorios

mkdir alfredoff
mkdir marinapg
mkdir ramonam
pause

:copiar
xcopy %USERPROFILE% C:\Users\Alumno\Desktop /e
pause
exit

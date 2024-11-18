@echo off

Rem Autor: Mario Benítez Vázquez
Rem Fecha: 18-11-2024

set num1=6

set num2=5

set num3=8

set dividir=3

set /a media= (%num1% + %num2% + %num3%) / %dividir%

echo La media de  de %num1%, %num2% y %num3% es %media%
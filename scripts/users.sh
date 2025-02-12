#!/bin/bash
# Script Users
# Autor: Mario Benítez Vázqez
# Fecha: 11-02-2025

#Mostrar todos los usuarios uid

clear

IFS=:

date=$(date +"%D")
time=$(date +"%r")

echo "Informe de usuario $date a las $time"

count=0

while read  us x uid gid d h shell; do

	if [ $uid -ge 1000 ]; then
	echo "$us - $uid"
		count=$(( count + 1 ))
	fi


done < /etc/passwd

echo "Contador de usuarios:'$count'"



#!/bin/bash
#Script de Agenda
#Autor:Mario Benítez Vázquez
#Fecha:03-02-2025

clear


while true; do

	echo "Menu de opciones"
	echo "a) Añadir entradas"
	echo "b) Buscar por dni"
	echo "c) Ver la agenda completa"
	echo "d) Eliminar todas las entradas de la agenda"
	echo "e) Salir "
read -p "Introduce la opcion que deseas:  " option

case $option in

	a)
		read -p "Dime DNI " dni

		if grep "^$dni:" agenda.txt>/dev/null; then

			echo "Usuario ya existente"

		else
			read -p "Digame su nombre  " name
			read -p "Digame su apellido  " surname
			read -p "Digame su localidad  " locality

			echo "$dni:$name:$surname:$locality" >> agenda.txt
		fi
	;;

	b)
		read -p "Digame su dni:  " dni

		if grep "^$dni:" agenda.txt >> /dev/null; then

			dni=$(grep $dni agenda.txt | cut -d ":" -f 1)
			nombre=$(grep $dni agenda.txt | cut -d ":" -f 2)
			apellidos=$(grep $dni agenda.txt |cut -d ":" -f 3)
			ciudades=$(grep $dni agenda.txt | cut -d ":" -f 4)

			echo "La persona con DNI numero $dni es: $nombre $apellidos, y vive en $ciudades"
		else
				echo "¡ERROR! No valido"

		fi
	;;

	c)
		if [ -e agenda.txt ]; then 

			echo "Agenda completa: "
			cat agenda.txt

		else
			echo "Agenda vacia"
		fi

	;;


	d)
		> agenda.txt
		echo "Vaciando agenda..."
	;;


	e)
		echo "Finalizando..."
		break
	;;

	esac
	done

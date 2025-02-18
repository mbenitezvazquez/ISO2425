#!/bin/bash
# Scritp fiveOrMore
# Autor: Mario Benítez Vázquez
# Fecha: 10-02-2025

clear




		if [ $# != 2 ]; then

			echo "Tiene dos parametros"
			exit
		fi


		if [ -f $1 ]; then

			echo "Fichero Existente"
			exit
		else

			echo "Fichero Inexistente"

		fi


		if [ -d $2 ]; then

			echo "Directorio Existente"
		else

			echo "Directorio Inexistente"
			exit
		fi



		archivo=$(ls $2 | wc -l)

                if [ $archivo -eq 0 ]; then

                echo "Directorio $2 vacio"
                exit
                fi
		
echo "Mario Benítez Vázquez"



		for i in $2/*.txt; do

			lineas=$(cat $i | wc -l)

			if [ $lineas -ge 5 ]; then

				echo $i
				echo $i >> $1

				palabras=$(cat $i | wc -w)
				echo "El fichero original teine $palabras palabra" >> $1.q
				cat $1 > $i.q

				echo "creando... "
				ls $2

			fi
		done




		num=$(cat $1 | wc -l)
		echo "El fichero $1 $num ficheros" >> $1




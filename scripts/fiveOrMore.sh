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
		else

			echo "Fichero Inexistente"
			exit

		fi


		if [ -d $2 ]; then

			echo "Fichero Existente"
		else

			echo "Fichero Inexistente"
			exit
		fi


		if [ -z $2 ]; then
			echo "No esta vacio"

		else
			echo "fichero vacio"
			exit

		fi


	echo "Autor: Mario Benítez Vázquez"


		for i in $2/*.txt | -wc -l; do

			echo $i

		done

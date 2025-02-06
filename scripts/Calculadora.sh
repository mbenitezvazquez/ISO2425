#!/bin/bash
# Script Calculadora
# Autor: Mario Benítez Vázque
# Fecha: 04-02-2025

clear

echo "Autor: Mario Benítez Vázquez"

	if [ $# != 2 ]; then

		echo "ERROR, Introducir 2 parámetros"
		exit

	fi

	if [ -f $1.txt ]; then

	echo "Fichero existente, ingrese otro nombre"
	exit

	fi

		cont=0

	while [ $cont -lt $2 ]; do

		echo "Contador: $cont"

		cont=$((cont + 1))


	read -p "Op(S,R,M,D o X) op1 op2: " op op1 op2

	case $op in

	S)

	res=$(($op1 + $op2))
	echo "$op1 + $op2 = $res"
	echo "$op $op1 + $op2 = $res" >> $1.txt

	;;

	R)

	res=$(($op1 - $op2))
	echo "$op1 - $op2 = $res"
	echo "$op $op1 - $op2 = $res" >> $1.txt

	;;

	M)

	res=$(($op1 * $op2))
	echo "$op1 X $op2 = $res"
	echo "$op $op1 X $op2 = $res" >> $1.txt

	;;

	D)

	res=$(($op1 / $op2))
	echo "$op1 / $op = $res"
	echo "$op $op1 / $op2 = $res" >> $1.txt

	;;


	X)
		echo "Finalizando..."
		break

	;;

	*)

		echo "Valor Invalido"

	;;

esac

done

echo "La ruta del fichero es $1.txt, y su contenido:"
cat $1.txt

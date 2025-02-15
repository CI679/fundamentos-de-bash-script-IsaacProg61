#!/bin/bash
#tipos de variables:universal pero la variable toma el tipo de la primera
#asignacion

n1=10
n2=7
echo "el valor de n1 es $n1" #para acceder al valor de la variable se usa $

#estructuras de condicionales
#operadores condicionales
#< (-lt)
#> (-gt)
#<= (-le)
#=> (-ge)
#== (-eq)
#!= (-ne)

if [[ $n1 -gt $n2 ]]; then
	echo "La sentencia es verdadera $n1 $n2"
else
	echo "La sentencia es falsa $n1 $n2" 
fi

ls
res=$?

echo "El resultado de la ejecucion es $res"

if [[ $? == 0 ]]; then
	echo "La sentencia se ejecuto correctamente"
else
	echo "la sentencia fallo"
fi

#operadores oara manipular archivos
#-e indica si un archivo o carpeta existe
#-d indica si es una carpeta
# -r -w -x si puede leer, escribir y ejecutar
# -s si el archivo tiene algo

file="./file-demo"

if [[ -s $file ]]; then
	echo "El archivo contiene algo"
else
	echo "El archivo esta vacio"
fi

#operadores logicos AND (&&), OR (||)
if [ -r $file ] && [ -x $file ]; then
	echo "el archivo se puede leer y  ejecutar"
else
	echo "el archivo no se puede leer yejecutar"
fi

#estructura de control case

case $1 in
	hola )
		echo "Bienvenido"
	;;
	adios )
		echo "Adios"
	;;
	* )
		echo"No entiendo lo que dices"
	;;
esac

#estructuras iterativas
#while
user=""
while [[ $user != "admin" ]]; do
	read -p "¿cual es tu usuario?" user
done

#for

for i in {1..5}; do
	echo "El numero es $i"
done

for (( i=0; i<5; i++ )); do
	echo "* el numero es $i"
done

invitados=(pedro juan david maria lulu ivan)
for invitado in ${invitados[@]}; do
	echo "hola $invitado"
done

#Funciones
suma()
{
	echo "Hola desde la funcion sumar."
}

suma

resta()
{
	echo $(( $1 - $2 ))
}
total=$(resta 9 2)
echo "El total es $total"

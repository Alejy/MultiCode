#!/bin/bash

function ctrl_c(){	#Esta funcion permite ejecutar Ctrol+C para salir de la ejecuciuon.
	echo -e "\033{31m Ejecucion Cancelada..." #Reporta por consola el texto indicado en color rojo
	exit 1	#Sale del programa
}


#Trap captura el control C
trap ctrl_c INT

#Creamos un bucle con una secuencia del 1 al 254
for host in $(seq 1 254);do
	#Indicamos que el tiempo de espera sea 1seg - ejecutamos un ping y si contesta indicamos que el equipo esta activo
	timeout 1 bash -c "ping -c 1 192.168.1.$host &>/dev/null" && echo "[!] Host 192.168.1.$host - UP" &	
	#Anadimos & para indicar que realice las tareas en paralelo o multihilo
done; wait


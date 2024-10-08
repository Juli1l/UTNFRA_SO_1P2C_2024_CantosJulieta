#!/bin/bash

echo "Punto E"


free -h | grep "Mem" | awk '{print "Memoria Total: " $2}' > /RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt

sudo dmidecode -t chassis | grep -i manufacturer >> /RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt

echo "Archivo Filtro_Basico.txt creado con la información requerida."

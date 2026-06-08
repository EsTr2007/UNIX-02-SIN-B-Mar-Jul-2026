#!/bin/bash

PRIMER_NOMBRE="${1}"
APELLIDO="${2}"

if [ -z "${PRIMER_NOMBRE}" ] || [ -z "${APELLIDO}" ]; then
    echo "Error: Debes proporcionar tu nombre y apellido."
    echo "Uso: ./exercise1.sh TuNombre TuApellido"
    exit 1
fi

date +"%d-%m-%Y" > output.txt
echo "${PRIMER_NOMBRE} ${APELLIDO}" >> output.txt

cp output.txt backup.txt

echo "--- Contenido de output.txt ---"
cat output.txt
echo "--------------------------------"
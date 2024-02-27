#!/bin/bash

# Crear un archivo de texto plano llamado mytext y agregar la cadena "Hola Mundo"
echo "Hola Mundo" > mytext.txt

# Desplegar/Imprimir en la terminal el contenido del archivo mytext
cat mytext.txt

# Crear un directorio llamado backup
mkdir backup

# Mover el archivo mytext al directorio backup
mv mytext.txt backup/

# Listar el contenido del directorio backup
ls backup/

# Eliminar el archivo mytext del directorio backup
rm backup/mytext.txt

# Eliminar el directorio backup
rmdir backup

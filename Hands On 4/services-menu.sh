#!/bin/bash

# Función para listar el contenido de un archivo (carpeta)
listar_contenido() {
    read -p "Ingrese la ruta absoluta al archivo o carpeta: " ruta
    ls -l "$ruta"
}

# Función para crear un archivo de texto con una simple línea de texto
crear_archivo() {
    read -p "Ingrese la cadena de texto a almacenar en el archivo: " texto
    echo "$texto" > nuevo_archivo.txt
    echo "Archivo creado exitosamente."
}

# Función para comparar dos archivos de texto
comparar_archivos() {
    read -p "Ingrese el primer archivo: " archivo1
    read -p "Ingrese el segundo archivo: " archivo2
    diff "$archivo1" "$archivo2"
}

# Función para mostrar el uso del comando awk
uso_awk() {
    echo "Uso del comando awk:"
    echo "awk '{print \$1}' archivo.txt"
}

# Función para mostrar el uso del comando grep
uso_grep() {
    echo "Uso del comando grep:"
    echo "grep 'patrón' archivo.txt"
}

# Menú principal
while true; do
    echo "Menú de opciones:"
    echo "1. Listar contenido de un archivo o carpeta"
    echo "2. Crear un archivo de texto"
    echo "3. Comparar dos archivos de texto"
    echo "4. Mostrar uso de awk"
    echo "5. Mostrar uso de grep"
    echo "6. Salir"

    read -p "Seleccione una opción: " opcion

    case $opcion in
        1) listar_contenido ;;
        2) crear_archivo ;;
        3) comparar_archivos ;;
        4) uso_awk ;;
        5) uso_grep ;;
        6) echo "Saliendo..."; exit ;;
        *) echo "Opción inválida";;
    esac
done

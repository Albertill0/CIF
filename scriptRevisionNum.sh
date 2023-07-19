#!/bin/bash

# Obtención de esa revisión del repo SVN
revision=$(svn info --show-item revision)

# Escriba aquí el Nombre de archivo base al que se quiere añadir la subversion
nombre_file="nomArchivo_rev"

#Extension de archivo
extension=".pdf"

#Crear el nombre de archivo nuevo

nombre_completo_nuevo="${nombre_file}_${revision}${extension}"

# Crea el archivo vacio

touch "$nombre_completo_nuevo"

# Crea el archivo nuevo
echo "Archivo creado en este directorio. Nombre: $nombre_completo_nuevo"

# Remplaza el contenido del archivo por el del original

mv "$nombre_file" "$nombre_completo_nuevo" | echo "Copiados los contenidos del fichero original al subversionado"

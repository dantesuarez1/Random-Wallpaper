#!/usr/bin/sh

# Directorio con las imágenes
wallpaper_dir="$HOME/Imágenes/Wallpapers"

# Verificar si el directorio existe
if [ ! -d "$wallpaper_dir" ]; then
  echo "Error: El directorio de imágenes '$wallpaper_dir' no existe."
  exit 1
fi

# Obtener una lista de las imágenes
imagenes_disponibles=("$wallpaper_dir"/*)

# Verificar si hay imágenes en el directorio
if [ ${#imagenes_disponibles[@]} -eq 0 ]; then
  echo "Error: No hay imágenes en el directorio '$wallpaper_dir'."
  exit 1
fi

# Seleccionar una imagen aleatoria
indice_aleatorio=$((RANDOM % ${#imagenes_disponibles[@]}))
imagen_aleatoria="${imagenes_disponibles[$indice_aleatorio]}"

# Establecer la imagen aleatoria como fondo de pantalla
feh --bg-fill "$imagen_aleatoria"


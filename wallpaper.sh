#!/usr/bin/sh

# Wallpapers Directory
wallpaper_dir="$HOME/Imágenes/Wallpapers"

# Verify
if [ ! -d "$wallpaper_dir" ]; then
  echo "Error: El directorio de imágenes '$wallpaper_dir' no existe."
  exit 1
fi

# List of available wallpapers
imagenes_disponibles=("$wallpaper_dir"/*)

# Verify if there is wallpapers in the directory
if [ ${#imagenes_disponibles[@]} -eq 0 ]; then
  echo "Error: No hay imágenes en el directorio '$wallpaper_dir'."
  exit 1
fi

# Selects random wallpaper
indice_aleatorio=$((RANDOM % ${#imagenes_disponibles[@]}))
imagen_aleatoria="${imagenes_disponibles[$indice_aleatorio]}"

# Set it as wallpaper
feh --bg-fill "$imagen_aleatoria"

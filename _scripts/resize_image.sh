#!/bin/bash

# Vérifie si un fichier a été passé en argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 image.jpg"
    exit 1
fi

INPUT="$1"
OUTPUT="${INPUT}_resized"
MAX_SIZE=1920  # Taille maximale en pixels (modifiable selon besoin)

# Redimensionnement avec ImageMagick en conservant les proportions
convert "$INPUT" -resize "${MAX_SIZE}x${MAX_SIZE}>" "$OUTPUT"

echo "Image redimensionnée : $OUTPUT"

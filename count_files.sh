#!/bin/bash

# Demander à l'utilisateur de saisir le répertoire
echo "Entrez le chemin du répertoire :"
read repertoire

# Vérifie si le répertoire existe
if [ -d "$repertoire" ]; then
    # Compter uniquement les fichiers (exclut les dossiers)
    nombre_fichiers=$(find "$repertoire" -maxdepth 1 -type f | wc -l)
    echo "Il y a $nombre_fichiers fichiers dans le répertoire $repertoire."
else
    echo "Erreur : le répertoire n'existe pas."
fi

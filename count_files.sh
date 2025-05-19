#!/bin/bash

# Demander à l'utilisateur d'entrer le chemin du répertoire
echo "Entrez le chemin du répertoire :"
read directory

# Vérifier si le répertoire existe
if [ -d "$directory" ]; then
    # Compter uniquement les fichiers (pas les dossiers)
    count=$(ls -l "$directory" | grep -v '^d' | wc -l)
    echo "Il y a $count fichiers dans le répertoire $directory."
else
    echo "Le répertoire n'existe pas."
fi

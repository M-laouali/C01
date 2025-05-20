#!/bin/bash

# Vérifie s'il y a au moins un argument
if [ $# -eq 0 ]; then
    echo "Aucun argument fourni."
    exit 1
fi

# Initialiser un compteur
compteur=1

# Parcourir tous les arguments
for arg in "$@"
do
    echo "Argument $compteur: $arg"
    compteur=$((compteur + 1))
done

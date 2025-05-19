#!/bin/bash

# Demander le nom du fichier
echo "Entrez le nom du fichier :"
read fichier

# Vérifier si le fichier existe
if [ ! -f "$fichier" ]; then
    echo "Le fichier '$fichier' n'existe pas."
    exit 1
fi

# Demander la chaîne à rechercher
echo "Entrez la chaîne à rechercher :"
read chaine

# Utiliser grep pour rechercher la chaîne
if grep -q "$chaine" "$fichier"; then
    echo "La chaîne '$chaine' a été trouvée dans $fichier."
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
fi

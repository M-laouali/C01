#!/bin/bash

# Demander à l'utilisateur de saisir le répertoire
echo "Entrez le nom du dossier :"
read myfolder

count=0

for file in $(ls "$myfolder"); do
if [ -f "$myfolder/$file" ]; then
count=$((count + 1))
   fi
done
echo "Le dossier $myfolder contient $count=$((count + 1)) fichier(s)"

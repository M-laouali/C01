#!/bin/bash

# 

read -a arguments 

# Initialiser un compteur
compteur=1

# Parcourir tous les arguments
for arg in "$@"
do
    echo "Argument $compteur: $arg"
    compteur=$((compteur + 1))
done

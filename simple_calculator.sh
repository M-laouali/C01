#!/bin/bash

# Demander les deux nombres et l'opérateur
echo "Entrez le premier nombre :"
read nombre1

echo "Entrez le deuxième nombre :"
read nombre2

echo "Entrez l'opérateur (+, -, *, /) :"
read operateur

# Vérifier si les entrées sont des nombres
if ! [[ "$nombre1" =~ ^[0-9]+$ ]] || ! [[ "$nombre2" =~ ^[0-9]+$ ]]; then
    echo "Erreur : les deux valeurs doivent être des nombres entiers."
    exit 1
fi

# Effectuer l'opération selon l'opérateur
case $operateur in
    +)
        resultat=$((nombre1 + nombre2))
        ;;
    -)
        resultat=$((nombre1 - nombre2))
        ;;
    \*)
        resultat=$((nombre1 * nombre2))
        ;;
    /)
        if [ "$nombre2" -eq 0 ]; then
            echo "Erreur : division par zéro."
            exit 1
        fi
        resultat=$((nombre1 / nombre2))
        ;;
    *)
        echo "Opérateur invalide. Utilisez +, -, *, ou /"
        exit 1
        ;;
esac

# Afficher le résultat
echo "Résultat : $resultat"

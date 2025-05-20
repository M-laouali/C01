#!/bin/bash

# saisir 

read a arguments

# initialisation du compteur

i=1

# parcours du tableau arguments avec la boucle for

for arg in "${arguments[@]}"; do

echo "Argument $((i++)): $arg"

done

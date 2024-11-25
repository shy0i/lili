#!/usr/bin/bash

if [ $# -ne 2 ]; then
    echo "Erreur: 2 arguments sont nécessaires."
    echo "Usage: $0 <Annee> <Ville>"
    exit 1
fi

Annee=$1
Ville=$2

nb_locations=$(cat /Users/oumayachelbi/documents/coursppe1/Exercice1/ann/$Annee/*/*.ann | grep -c $Ville)

echo "Le nombre de fois que $Ville apparait est : $nb_locations"

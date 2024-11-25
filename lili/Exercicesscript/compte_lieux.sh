#!/usr/bin/bash

if [ $# -ne 3 ]; then
    echo "Erreur: 3 arguments sont nécessaires."
    echo "Usage: $0 <Annee> <Mois> <Nombre de lieux>"
    exit 1
fi

Annee=$1
Mois=$2
nb_lieux=$3

nb_locations=$(cat /Users/oumayachelbi/documents/coursppe1/Exercice1/ann/$Annee/*/*.ann | grep 'Location' | cut -f3 | sort | uniq -c | sort -nr | head -n $nb_lieux)

echo "Classement des $nb_lieux lieux les plus cités pour l'année $Annee et le mois $Mois :"
echo "$nb_locations"

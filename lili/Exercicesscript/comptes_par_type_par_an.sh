#!/usr/bin/bash

if [ $# -ne 1 ]; then
    echo "Erreur: 1 argument est nécessaire."
    echo "Usage: $0 <Ville>"
    exit 1
fi

Ville=$1

nb_locations=$(cat /Users/oumayachelbi/Documents/coursppe1/Exercice1/ann/2016/*/*.ann | grep -c $Ville)

echo "Le nombre de fois que $Ville apparait en 2016 est : $nb_locations"

nb_locations=$(cat /Users/oumayachelbi/Documents/coursppe1/Exercice1/ann/2017/*/*.ann | grep -c $Ville)

echo "Le nombre de fois que $Ville apparait en 2017 est : $nb_locations"

nb_locations=$(cat /Users/oumayachelbi/Documents/coursppe1/Exercice1/ann/2018/*/*.ann | grep -c $Ville)

echo "Le nombre de fois que $Ville apparait en 2018 est : $nb_locations"

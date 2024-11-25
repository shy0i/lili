#!/usr/bin/bash

for Annee in 2016 2017 2018

do 

 nb_locations=$(cat /Users/oumayachelbi/documents/coursppe1/Exercice1/ann/$Annee/*/*.ann | grep -c 'Location')

   echo "Année $Annee : Le nombre de Locations est : $nb_locations"
done 





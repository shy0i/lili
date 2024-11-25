#!/usr/bin/env bash

if [ $# -ne 1 ]; then
    echo "Erreur: Aucun fichier URL fourni."
    exit 1
fi

fichier=$1 # e stocke le chemin du fichier dans une variable que je définis lors de l'appel du script depuis le terminal, et je remplace ainsi urls/fr.txt par $1 dans la boucle.

numero_ligne=1 # On initialise un compteur de lignes à 1, qui s'incrémente à chaque itération de la boucle en fonction du nombre de lignes présentes dans le fichier.

while read -r line
do
	code_http=$(curl -o /dev/null -s -w "%{http_code}" "$line")
	encodage=$(curl -s -I --show-error $line | grep -i "content-type: text/html; charset=" )
	nb_mots=$(curl -s --show-error $line | wc -w)
	echo -e "${numero_ligne}\t${line}\t${code_http}\t${nb_mots}\t${encodage}"
	numero_ligne=$((numero_ligne + 1))
done < "$1"
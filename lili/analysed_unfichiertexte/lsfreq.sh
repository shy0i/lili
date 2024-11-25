#!/bin/bash


if [ $# -lt 1 ]; then
    echo "Usage: $0 candide_cleaned.txt [nombre_de_mots]"
    exit 1
fi

fichier=$1
nombre_mots=${2:-25}  # Permet d'afficher par défaut, affiche les 25 mots les plus fréquents

# Appel du script de préparation pour nettoyer le texte et compter les fréquences
./ex1preparationfich.sh "$fichier" | sort | uniq -c | sort -nr | head -n "$nombre_mots"

#!/bin/bash


if [ $# -ne 1 ]; then
    echo "Usage: $0 /Users/oumayachelbi/Documents/coursppe1/PPE1-2024oumaya/analysed_unfichiertexte/candide.txt"
    exit 1
fi

fichier=$1

# Nettoyage et mise en forme : un mot par ligne, sans ponctuation, en minuscule
cat "$fichier" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]' | tr ' ' '\n' | grep -v '^$'

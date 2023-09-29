#!/bin/bash

# Demande à l'utilisateur de saisir les deux nombres et effectue l'addition en une seule ligne
read -p "Entrez le premier nombre : " nombre1 && read -p "Entrez le deuxième nombre : " nombre2 && echo "Le résultat de l'addition est : $((nombre1 + nombre2))"




#!/bin/bash

min=100
max=120
for i in $(seq $min $max)
do
    touch "$i.txt"
done

echo "Bienvenue dans le jeu !"
echo "Vous devez trouver le bon fichier à supprimer en trouvant son numéro."
echo "Voici un message codé en hexadécimal qui pourrait vous aider :"

numero_a_trouver=$(( RANDOM % (max - min + 1) + min ))

message_clair="le fichier est le numero $numero_a_trouver"

message_hex=$(echo -n "$message_clair" | xxd -ps | tr -d '\n')

echo "$message_hex"

mkdir nepasouvrir
touch "num.txt"
echo $numero_a_trouver > nepasouvrir/num.txt

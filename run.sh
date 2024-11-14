#!/bin/bash

min=100
max=120
for i in $(seq $min $max)
do
    touch "$i.txt"
done

echo "Bienvenue dans le jeu ! "
echo "Pour désamorcer la bombe vous devez supprimer le bon fichier dans son système en trouvant son numéro. Sinon la bombe explose !"
echo "Voici un message trouvé près de la bombe, codé en hexadécimal qui pourrait vous aider :"

numero_a_trouver=$(( RANDOM % (max - min + 1) + min ))

message_clair="le fichier est le numero $numero_a_trouver"

message_hex=$(echo -n "$message_clair" | xxd -ps | tr -d '\n')

echo "$message_hex"

mkdir nepasouvrir
touch "num.txt"
echo $numero_a_trouver > nepasouvrir/num.txt

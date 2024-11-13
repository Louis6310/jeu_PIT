#!/bin/bash

numero_a_trouver=$(cat nepasouvrir/num.txt)

if [[ ! -e "$numero_a_trouver.txt" ]]; then
    echo "Bravo ! Vous avez trouvé et supprimé le bon fichier ($numero_a_trouver.txt)."
else
    echo "Ce n'est pas le bon fichier, ou vous n'avez pas encore supprimé de fichier. Essayez encore !"
fi


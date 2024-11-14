min=100
max=120


for i in $(seq $min $max)
do
    rm "$i.txt"             #on supprime les fichiers un par un à l'aide d'une boucle
done

rm -r nepasouvrir
rm num.txt

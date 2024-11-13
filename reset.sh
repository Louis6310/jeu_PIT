min=100
max=120


for i in $(seq $min $max)
do
    rm "$i.txt"
done

rm -r nepasouvrir
rm num.txt

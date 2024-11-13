# jeu_PIT
Jeu PIT par Louis et William sur la commande rm et le pipe

## BUT DU JEU 

L'objectif est de trouver le bon fichier à supprimer pour gagner. 
Les commades utiles sont rm et le pipe |

## UTLISATION

Pour lancer le jeu, taper la commande ./run.sh afin de lancer le script.
Une fois terminé, verifiez avec le script verif.sh.
Pour remettre à zéro, utilisez reset.sh.

## SOLUTION 

Une fois le jeu lancé tapez :

echo "<message hexa> " | xxd -r -p

Cette commande permet de décoder le message (on utilise le pipe pour enchaîner deux
commandes) :
Premièrement echo puis xxd (utilisé pour faire la conversion entre binaire, hexadécimal et texte)
avec l’option -r (inverse la conversion, c'est-à-dire qu'elle convertit l'hexadécimal en texte) puis -p
interprète l'entrée hexadécimale comme une séquence de bytes).


Le message obtenu permet de trouver quel fichier supprimé.
Le joueur tape ainsi la commande : 
rm <numero du fichier>.txt
Le jeu est terminé. 


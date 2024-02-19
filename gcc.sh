echo "Voulez vous afficher la man page du gcc?"
read Variable #saisie de la variable
if [ $Variable -eq 0 ] #si Variable vaut À
then
man gcc
fi

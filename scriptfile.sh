#!/bin/bash

echo "Veuillez saisir le fichier a chercher :"
read file

if [ -e $file ]; then
echo "Le fichier $file existe !"
else
echo "Pas de fichier en ce nom dans le SF"
fi

#!/bin/bash
execute="empty"

while [ $execute != "QUIT" ]
do
echo "Veuillez saisir le fichier a verifier comme executable :"
read execute

if [ -x $execute ] ; then
echo "le fichier est executable !!!"
else
echo "le fichier n'est pas executable!!!"
fi
done



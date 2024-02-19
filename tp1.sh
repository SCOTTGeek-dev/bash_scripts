#!/bin/bash

[ $# -ne 1 ] && echo "Donner le nom d'un fichier!" 1>&2 && exit 1
[ ! -f $1 ] && echo "Pas un fichier!" 1>&2 && exit 2
tail -3 $1 >losange.tmpp
head -3 $1 >> losange.tmpp

echo "Losange inverse ! le resultat est dispo sur le fichier losange.tmpp "

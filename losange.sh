#!/bin/bash

[ $# -ne 1 ] && echo "Donner un nom de fichier valide!" 1>&2 && exit 1
[ ! -f $1 ] && echo "pas un  fichier!" 1>&2 && exit 2
tail -n 3 $1>losange.newversion
head -n 3 $1>>losange.newversion
echo "losange inverse avec succes!"

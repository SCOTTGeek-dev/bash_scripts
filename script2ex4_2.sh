#!/bin/bash

if [ $# -ne 1 ]; then
echo "Entrer une adresse mail valide!"
exit 1
fi

email=$1

login=$(echo $email | cut -d '@' -f 1)

echo "le login de l'email $email est : $login "

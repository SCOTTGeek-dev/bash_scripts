#!/bin/bash

i=0 
while [ $i -lt 100 ]; do
echo -e "\r"
echo -e "chargement ..$i"
i=$((i+1))
sleep 1
done

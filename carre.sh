#!/bin/bash

[ $# -ne 1 ] && echo " Usage : $(basename $0) int  " 1>&2 && exit 1
echo debut du travail

for((i=0;i<$1;i++));do
for((j=0;j<$1;j++));do
echo -n '*'
done
echo -en '\n'
done
echo fin 

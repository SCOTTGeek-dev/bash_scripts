#!/bin/bash

if [ $# -ne 1 ]; then
exit 1
fi


for((i=0;i<$1;i++)) do
	for((j=0;j<$1;j++)) do
	echo -ne "*"
	done
	echo -ne "\n"
done



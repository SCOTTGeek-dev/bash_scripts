#!/bin/bash

i=5

while [[ $i -ge 0 ]];
 do
echo  "Quitting at $i"
i=$((i - 1))
sleep 1
done

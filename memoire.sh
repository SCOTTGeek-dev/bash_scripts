#!/bin/bash

mem=$(free -h|grep "Mem:"|tr -s " " |cut -d " " -f 3)
echo "La memoire restante est:$mem tel que la date est: $(date)"

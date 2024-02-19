#!/bin/bash
var1=$0
echo "execution $0" && [ $# -ne 2 ] && eco "USAGE: `basename $0` fichier
date" >&2 && exit 15 


#!/bin/bash 
 
# Name: Check for domain name availability 
# linuxconfig.org 
# Please copy, share, redistribute and improve 
 
if [ "$#" == "0" ]; then 
    echo "You need tu supply at least one argument!" 
    exit 1
fi 
 
DOMAINS=( '.com' '.co.uk' '.net' '.info' '.mobi' \ 
'.org' '.tel' '.biz' '.tv' '.cc' '.eu' '.ru' \ 
'.in' '.it' '.sk' '.com.au' )
 
ELEMENTS=${#DOMAINS[@]} 
 
while (( "$#" )); do 
 
  for (( i=0;i<$ELEMENTS;i++)); do 
      whois $1${DOMAINS[${i}]} | egrep -q \ 
      '^No match|^NOT FOUND|^Not fo|AVAILABLE|^No Data Fou|has not been regi|No entri' 
	  if [ $? -eq 0 ]; then 
	      echo "$1${DOMAINS[${i}]} : available" 
	  fi 
  done 
 
shift 
 
done

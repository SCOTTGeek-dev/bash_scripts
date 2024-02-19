#!/bin/bash

printDiamond() {
    n=$1
    space=$((n-1))
    
    # Boucle pour afficher le triangle
    for (( i=0; i<n; i++ ))
    do
        # Boucle pour afficher les espaces avant les étoiles
        for (( j=0; j<space; j++ ))
        do
            echo -n  " "
        done
        
        # Boucle pour afficher les étoiles
        for (( j=0; j<=i; j++ ))
        do
            echo -n  "* "
        done
        
        # Saut de ligne
            echo ""
        
        space=$((space-1))
    done
    
    # Boucle pour afficher le triangle inversé
    space=1
    for (( i=n-1; i>0; i-- ))
    do
        # Boucle pour afficher les espaces avant les étoiles
        for (( j=0; j<space; j++ ))
        do
            echo -n " "
        done
        
        # Boucle pour afficher les étoiles
        for (( j=0; j<i; j++ ))
        do
            echo -n "* "
        done
        
        # Saut de ligne
        echo  " "
        
        space=$((space+1))
    done
}
printDiamond $1

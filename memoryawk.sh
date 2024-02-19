#!/bin/bash

# Obtient l'ID du processus consommant le plus de mémoire
process_id=$(ps aux --sort=-%mem | head -n 2 | tail -n 1 | awk '{print $2}')

# Obtient la taille de l'espace mémoire utilisé par le processus en kilo-octets
memory_usage=$(ps -p $process_id -o rss --no-headers)

# Obtient la taille totale de la mémoire disponible
total_memory=$(free -k | awk 'NR==2 {print $2}')

# Convertit la taille de la mémoire utilisée en méga-octets pour une meilleure lisibilité
memory_usage_mb=$(echo "scale=2; $memory_usage/1024" | bc)

# Affiche le processus et la mémoire utilisée
echo "Le processus $process_id consomme le plus de mémoire à l'instant."
echo "Taille de l'espace mémoire utilisé : $memory_usage_mb Mo."
echo "Taille totale de la mémoire disponible : $total_memory Ko."

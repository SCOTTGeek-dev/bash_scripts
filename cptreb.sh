#!/bin/bash

numberleft=5

while [ $numberleft -gt 0 ]
	do

		echo "$numberleft"
		numberleft=$((numberleft-1))
		sleep 1
	done

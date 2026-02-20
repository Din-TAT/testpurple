#!/bin/bash

counter=1
while [[ $counter -le 5 ]]; do
	echo "Высота:$counter км"
	((counter++))
	sleep 1
done
echo "На орбите"

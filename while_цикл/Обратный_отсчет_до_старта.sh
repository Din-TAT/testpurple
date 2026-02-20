#!/bin/bash

#Цель: Написать простейший скрипт, который использует цикл while для обратного отсчета от 5 до 1, а затем выводит сообщение "СТАРТ!".

counter=5
while [ $counter -gt 0 ]; do
	echo "Осталось секунд: $counter"
	counter=$((counter - 1))
	sleep 1
done
echo "СТАРТ!"

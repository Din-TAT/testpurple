#!/bin/bash

#Легенда
#Вы — IT-администратор.
#В компанию пришли новые сотрудники, и вам нужно создать для каждого личную папку с файлом-визиткой.

for name in alex maria john;
do
	mkdir $name
	echo "User: $name" > $name/info.txt
	echo "Пользователь $name добавлен"
	sleep 1
done


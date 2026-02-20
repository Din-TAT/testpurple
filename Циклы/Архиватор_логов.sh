#!/bin/bash

#Легенда
#Вы — системный администратор.
#Каждую неделю нужно создавать пустые файлы-логи для разных серверов, чтобы в них записывалась информация о работе

for server in ser1 ser2 ser3;
do
	touch ${server}.log
	echo "Log started for $server" > ${server}.log
	echo "Лог для $server создан"
	sleep 1
done

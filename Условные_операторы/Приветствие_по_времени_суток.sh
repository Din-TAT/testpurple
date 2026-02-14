#!/bin/bash

read -p "Введите ваше имя:" name
time1=$(date +%H)
echo "Сейчас:$time1"
if [ "$time1" -ge 6 ] && [ "$time1" -le 11 ]
then
    echo "Доброе утро, $name"
elif
[ "$time1" -ge 12 ] && [ "$time1" -le 17 ]
then
    echo "Добрый день, $name"
elif
[ "$time1" -ge 18 ] && [ "$time1" -le 23 ]
then
    echo "Добрый вечер, $name"
else
    echo "Доброй ночи, $name"
fi

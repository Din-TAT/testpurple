#!/bin/bash

#Сравнение чисел

read -p "Введите число:" a
read -p "Введите число:" b

echo "$(expr $a \> $b)"
echo "$(expr $a \< $b)"
echo "$(expr $a = $b)"
echo "$(expr $a != $b)"

#Длина строки

text="Bash scripting"
dlina=$(expr length "$text")

echo "Длина строки '$text:' $dlina"

#Поиск подстроки
str="expression"
position=$(expr index "$str" "s")
echo "Позиция 's' в '$str': $position"

# Извлечение подстроки

text="hello world"
part=$(expr substr "$text" 7 4)
echo "Подстрока:$part"


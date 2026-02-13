#!/bin/bash

#Поиск подстроки

str="expression"
position_s=$(expr index "$str" "r")
echo "Позиция 'r' в '$str': $position_s" 

#Извлечение подстроки

text="Hello World"
part=$(expr substr "$text" 7 4)
echo "Подстрока: $part"

#Калькулятор

read -p "Введите число:" number_one
read -p "Введите число:" number_two

echo "Сложение: $(expr $number_one + $number_two)"
echo "Вычитание: $(expr $number_one - $number_two)"
echo "Умножение: $(expr $number_one \* $number_two)"
echo "Деление: $(expr $number_one / $number_two)"
echo "Остаток: $(expr $number_one % $number_two)"


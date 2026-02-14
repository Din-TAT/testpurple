#!/bin/bash

# Сложение и вычитание

a=25
b=17

result1=$(expr $a + $b)
echo "Сумма:$result1"

result2=$(expr $a - $b)
echo "Разность:$result2"


# Умножение через expr (с экранированием)

result4=$(expr $a \* $b)
echo "Произведение:$result4"

#Деление и остаток

c=37
d=5

result5=$(expr $c / $d)
echo "Деление:$result5"

result6=$(expr $c % $d)
echo "Остаток:$result6"


#Эмуляция инкремента/декремента через expr

x=5
echo "Исходное:$x"

x=$(expr $x + 1)
echo "После +1: $x"

x=$(expr $x - 1)
echo "После -1: $x"

#Сравнение чисел

read -p "Введите число:" q
read -p "Введите число:" w

echo "$(expr $q \> $w)"
echo "$(expr $q \< $w)"
echo "$(expr $q = $w)"
echo "$(expr $q != $w)"


#Длина строки

text="Bash scripting"
len=$(expr length "$text")
echo "Длина строки '$text': $len"

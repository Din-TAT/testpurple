#!/bin/bash
#Сложение и вычитание через expr

a=25
b=17

result1=$(expr $a + $b)
result2=$(expr $a - $b)

echo "Сумма:" $result1
echo "Разность:" $result2

#Умножение через expr

c=6
d=7

result3=$(expr $c \* $d)

echo "Произведение:" $result3

#Деление и остаток

q=37
w=5

result4=$(expr $q / $w)
result5=$(expr $q % $w)

echo "Деление:" $result4
echo "Остаток:" $result5

#Эмуляция инкремента/декремента

x=5
posle_plus1=$(expr $x + 1)
posle_minus1=$(expr $x - 1)

echo "Исходное:" $x
echo "После +1:" $posle_plus1
echo "После -1:" $posle_minus1




#!/bin/bash

number_one=20
number_two=15

echo "Сложение: $((number_one + number_two))"
echo "Вычитание: $((number_one - number_two))"
echo "Умножение: $(expr $number_one \* $number_two)"
echo "Деление: $(expr $number_one / $number_two)"
echo "Сложение дробных чисел: $(echo "15.5 + 4.2" | bc -l)"
((number_one++))
echo "После инкремента number_one стало: $number_one" 

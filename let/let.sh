#!/bin/bash
#Базовые операции
x=12
y=5

let "sum = x + y"
echo $sum
let "diff = x - y"
echo $diff
let prod=x*y
echo $prod
let quot=x/y
echo $quot
let rem=x%y
echo $rem


#Комбинированное присваивание
counter=10
let counter+=5
let counter*=2
let counter-=10
let counter+=3
echo $counter


#Условие:
#Напишите скрипт, который демонстрирует все четыре формы инкремента/декремента через let

n=5
echo "Начало: $n"
let ++n
echo "После ++n: $n"
let n++
echo "После n++: $n"
let --n
echo "После --n: $n"
let n--
echo "После n--: $n"
echo "Финал: $n"

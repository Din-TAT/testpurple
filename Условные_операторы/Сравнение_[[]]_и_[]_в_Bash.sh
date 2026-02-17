#!/bin/bash
#Задача 1: Проверка пустой строки
read -p "Введите текст:" str

if [ -z $str ]; then
	echo "Строка $str пустая"
else
	echo "Стока содержит: [ $str ]"
fi

#Задача 2: Проверка шаблона имени файла

read -p "Введите имя файла:" file

if [[ "$file" == *.txt || "$file" == *.log || "$file" == *.sh ]]; then
	echo "Тип файла; $file"
else
	echo "Неизвестный тип"
fi

#Не будет работать так как надо,из-за того что знак = сравнивает строку,а надо проверять наличие окончания,нет оператора шаблона *

#read -p "Введите имя файлы:" file1

#if [ "$file1" = .sh ]; then
	echo "Тип файла: $file1"
#elif
   #[ "$file1" = .log ]; then
#	echo "Тип файла: $file1"
#elif
   #[ "$file1" = .sh ]; then
#	echo "Тип файла: $file1"
#else
#	echo "Неизвестный тип"
#fi


#Задача 3: Сложное условие с AND/OR

read -p "Введите логин:" login
read -p "Введите возраст:" age

if [[ "$login" == 'admin' && "$age" -ge 18 || "$login" == "root" ]]; then
	echo "Доступ разрешён"
else
	echo "Доступ запрещён"
fi

read -p "Введите логин:" login_1
read -p "Введите возраст:" age_1

if [ "$login_1" == 'admin' ] && [ "$age_1" -ge 18 ] || [ "$login_1" == "root" ]; then
	echo "Доступ разрешён"
else
	echo "Доступ запрещён"
fi


# Задача 4: Регулярное выражение

read -p "Введите email:" email
if [[ "$email" =~ @.*\. ]]; then
	echo "Email валиден"
else
	echo "Email невалиден"
fi



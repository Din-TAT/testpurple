#!/bin/bash

read -p "Введите цвет:" color
color=${color,,}
case $color in
	red)
	 echo "Красный"
	 ;;
	green)
	 echo "Зелёный"
	 ;;
	*)
	 echo "Ошибка"
	 ;;
esac

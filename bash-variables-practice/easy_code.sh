#!/bin/bash

PROJECT_DIR="$HOME/testpurple/bash-variables-practice/" #путь к рабочей папке проекта. 
OUTPUT_FILE="$PROJECT_DIR/hello.txt" #Путь к файлу вывода.
USER_NAME="$USER" #Имя пользователя.
TODAY=$(date +"%d %B %Y") #Текущая дата.
mkdir -p "$PROJECT_DIR" #Создаёт путь к файлу вывода если его нету
 
echo "Привет, $USER_NAME!" > "$OUTPUT_FILE"
echo "Сегодня $TODAY." >> "$OUTPUT_FILE"

#!/bin/bash

task_name="$1"

mkdir -p "$task_name"/{docs/,scripts/,reports/}
touch "$task_name/README.md"
echo "Задание '$task_name' успешно настроено!"

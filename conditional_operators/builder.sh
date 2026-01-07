#!/bin/bash
#Пути к фейковым командам

STATUS_CMD="./mock/builder-status"
DEBUG_CMD="./mock/builder-debug"
LOG_DIR="./logs"
LOG_FILE="$LOG_DIR/monitor.log"

mkdir -p "$LOG_DIR"

#Выводим статус
status=$($STATUS_CMD)


log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
    echo "$1"
}

if [ "$status" = "Success" ]; then
    log_message " Сборка успешна"
elif [ "$status" = "Failed" ]; then
    log_message " Сборка упала. Запускаем отладку..."
    debug_output=$($DEBUG_CMD)
    log_message "DEBUG: $debug_output"
elif [ "$status" = "Launching" ]; then
    log_message " Сборка запущена. Ждём 5 секунд..."
    sleep 5
    # Повторная проверка (без цикла)
    status2=$($STATUS_CMD)
    if [ "$status2" = "Success" ]; then
        log_message "Сборка завершена успешно (после ожидания)"
    else
        log_message "борка всё ещё не завершена или упала"
    fi
else
    log_message " Неизвестный статус: $status"
fi

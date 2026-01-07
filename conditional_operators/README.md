Простой Bash-скрипт для имитации мониторинга статуса сборки с автоматическим логированием. 
Структура:
conditional_operators/
├── builder.sh # Основной скрипт мониторинга
├── mock/
│ ├── builder-status # Имитация команды статуса 
│ └── builder-debug # Имитация отладочной команды
├── logs/
│ └── monitor.log # Автоматически создаётся при запуске
└── README.md

Как запустить:
Сделай скрипты исполняемыми
chmod +x builder.sh mock/builder-status mock/builder-debug
Запусти мониторинг:
./builder.sh
Посмотри лог:
cat logs/monitor.log

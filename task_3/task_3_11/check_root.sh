#!/bin/bash

check_root() {
    if [ "$EUID" -ne 0 ]; then
        echo "Предупреждение: скрипт запущен не от имени суперпользователя"
        exit 1
    fi
}

check_root

echo "Скрипт выполняется с правами root"

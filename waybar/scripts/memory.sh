#!/bin/bash

# Получаем процент использования оперативной памяти
MEMORY_USAGE=$(free | grep Mem | awk '{print int($3/$2 * 100)}')

# Выводим процент использования
echo "$MEMORY_USAGE%"


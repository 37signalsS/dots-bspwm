#!/bin/bash

# Проверяем, активен ли Bluetooth-сервис
if ! systemctl is-active --quiet bluetooth; then
    echo "󰂯 -"
    exit 0
fi

# Получаем информацию о Bluetooth-устройствах
output=$(bluetoothctl info | grep "Battery Percentage")

# Извлекаем процент заряда из строки
battery_percentage=$(echo "$output" | grep -oP '\d+(?=\))')

# Проверяем, есть ли информация о заряде
if [ -n "$battery_percentage" ]; then
    echo "󰂯 ${battery_percentage}%"
else
    echo "󰂯 -"
fi

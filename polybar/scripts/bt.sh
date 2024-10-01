#!/bin/bash

# Проверяем, активен ли Bluetooth-сервис
if ! systemctl is-active --quiet bluetooth; then
    exit 0
fi

# Получаем список подключенных устройств
connected_devices=$(bluetoothctl devices | grep "Connected: yes" | awk '{print $2}')

# Если нет подключенных устройств, выходим
if [ -z "$connected_devices" ]; then
    exit 0
fi

# Инициализируем переменную для хранения батареи
battery_percentage=""

# Получаем информацию о каждом подключенном устройстве
for device in $connected_devices; do
    output=$(bluetoothctl info "$device" | grep "Battery Percentage")
    
    # Извлекаем процент заряда из строки
    battery_percentage=$(echo "$output" | grep -oP '\d+(?=%)')
    
    # Проверяем, есть ли информация о заряде
    if [ -n "$battery_percentage" ]; then
        echo "${battery_percentage}%"
        exit 0  # Выводим первый найденный заряд и выходим
    fi
done

# Если не найдено ни одного значения заряда, просто выходим
exit 0


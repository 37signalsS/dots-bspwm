#!/bin/bash

# Получаем список устройств
devices=$(bluetoothctl devices | awk '{print $2}')

for mac in $devices; do
    info=$(bluetoothctl info "$mac")

    # Только подключённые устройства
    if echo "$info" | grep -q "Connected: yes"; then
        battery_raw=$(echo "$info" | grep "Battery Percentage" | awk -F ': ' '{print $2}')

        # Очищаем от возможного "0x64 (100)" → оставляем только число
        battery_clean=$(echo "$battery_raw" | grep -oP '\(\K[0-9]+(?=\))')

        # Если не было скобок — пробуем просто взять число
        if [ -z "$battery_clean" ]; then
            battery_clean=$(echo "$battery_raw" | grep -oP '[0-9]+')
        fi

        echo "$battery_clean"
    fi
done


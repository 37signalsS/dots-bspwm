#!/bin/bash

# Убедимся, что bluetoothctl работает в интерактивном режиме
{
    # Включаем Bluetooth (если он выключен)
    echo -e "power on\n"

    # Подключаемся к устройству
    echo -e "disconnect FC:E8:06:A0:5D:2A\n"

    # Завершение работы bluetoothctl
    echo -e "exit\n"
} | bluetoothctl

# Дополнительный вывод информации о состоянии подключения
if [ $? -eq 0 ]; then
    echo "Устройство подключено."
else
    echo "Не удалось подключиться к устройству."
fi

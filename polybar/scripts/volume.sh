#!/bin/bash

# Получаем текущее состояние звука
CURRENT_VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/%//')

case "$1" in
    toggle)
        # Переключаем состояние звука
        pactl set-sink-mute @DEFAULT_SINK@ toggle
        ;;
    increase)
        # Увеличиваем громкость на 5%
        pactl set-sink-volume @DEFAULT_SINK@ +5%
        ;;
    decrease)
        # Уменьшаем громкость на 5%
        pactl set-sink-volume @DEFAULT_SINK@ -5%
        ;;
    *)       
esac

# Обновляем громкость в Polybar
CURRENT_VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')
echo " $CURRENT_VOLUME"

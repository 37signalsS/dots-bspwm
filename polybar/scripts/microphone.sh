#!/bin/bash

# Получаем текущее состояние микрофона
MUTE_STATUS=$(pactl get-source-mute @DEFAULT_SOURCE@)

case "$1" in
    toggle)
        # Переключаем состояние микрофона
        pactl set-source-mute @DEFAULT_SOURCE@ toggle
        ;;
    *)
esac

# Обновляем состояние в Polybar
if [[ "$MUTE_STATUS" == *"yes"* ]]; then
    echo "   "
else
    echo "  "
fi

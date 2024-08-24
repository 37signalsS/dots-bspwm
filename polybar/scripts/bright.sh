#!/bin/bash

# Параметры
BRIGHTNESS_STEP=0.1
MIN_BRIGHTNESS=0.3
MAX_BRIGHTNESS=1.7

# Получаем текущее значение яркости
CURRENT_BRIGHTNESS=$(xrandr --verbose | grep 'Brightness' | awk '{print $2}')

# Обработка аргумента (up или down)
if [ "$1" == "up" ]; then
    NEW_BRIGHTNESS=$(echo "$CURRENT_BRIGHTNESS + $BRIGHTNESS_STEP" | bc)
    if (( $(echo "$NEW_BRIGHTNESS > $MAX_BRIGHTNESS" | bc -l) )); then
        NEW_BRIGHTNESS=$MAX_BRIGHTNESS
    fi
elif [ "$1" == "down" ]; then
    NEW_BRIGHTNESS=$(echo "$CURRENT_BRIGHTNESS - $BRIGHTNESS_STEP" | bc)
    if (( $(echo "$NEW_BRIGHTNESS < $MIN_BRIGHTNESS" | bc -l) )); then
        NEW_BRIGHTNESS=$MIN_BRIGHTNESS
    fi
else
    echo " $CURRENT_BRIGHTNESS " 
    exit 1
fi

# Установка нового значения яркости
xrandr --output HDMI-A-0 --brightness "$NEW_BRIGHTNESS"



#!/bin/bash

# Получение температуры процессора
cpu_temp=$(sensors | grep "CPU:" |tr -d '+'| awk '{print $2}' | tr -d 'C')

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8 "%"}' )

# Форматирование вывода
echo "   ${cpu_usage} (${cpu_temp})"

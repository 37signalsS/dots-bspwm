#!/bin/bash

# Получение температуры процессора
cpu_temp=$(sensors | grep "Package id 0:" | tr -d '+' | awk '{print $4}' | tr -d 'C')

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8 "%"}' )

# Форматирование вывода
echo "   ${cpu_usage} (${cpu_temp})"

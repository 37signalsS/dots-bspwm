#!/bin/bash

API_KEY="804deb456f4d4d3e9264c07c1a5c0f4e"
CITY="Volgograd"
UNITS="metric"
URL="https://api.openweathermap.org/data/2.5/weather?q=${CITY}&units=${UNITS}&appid=${API_KEY}"

RESPONSE=$(curl -s "${URL}")


TEMPERATURE=$(echo "${RESPONSE}" | jq -r '.main.temp' | awk '{printf("%.0f",$1)}')
CONDITION=$(echo "${RESPONSE}" | jq -r '.weather[0].main')
DESCRIPTION=$(echo "${RESPONSE}" | jq -r '.weather[0].description')

case ${DESCRIPTION} in
	"mist"|"Mist"|"Smoke"|"smoke"|"haze")
        ICON=" "
        ;;
    "clear sky"|"Clear")
        ICON=" "
        ;;
    "few clouds"|"scattered clouds"|"broken clouds"|"Clouds"|"overcast clouds")
        ICON=" "
        ;;
    "shower rain"|"rain"|"light rain"|"moderate rain"|"heavy intensity rain"|"very heavy rain"|"extreme rain"|"light intensity shower rain")
        ICON=" " 
        ;;
    "thunderstorm"|"Thunderstorm")
        ICON=" "
        ;;
    "snow"|"light snow"|"Heavy snow")
        ICON=" "
        ;;
    *)
        ICON="?"
        ;;
esac

echo "${ICON}${TEMPERATURE}°" 

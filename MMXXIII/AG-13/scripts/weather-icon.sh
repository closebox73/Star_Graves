#!/bin/bash

#Closebox 73

theme=$1
weather_code=$(cat ~/.cache/weather.json | jq -r '.weather[0].icon')

# Main command
cp -r ~/.config/conky/Acrux/icons/${theme}/${weather_code}.png ~/.cache/weather-icon.png

exit

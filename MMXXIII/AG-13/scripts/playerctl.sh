#!/bin/bash

# Closebox73
# Simple script to get playerctl status

PCTL=$(playerctl status)
ARTS=$(playerctl metadata xesam:artist)
SONG=$(playerctl metadata xesam:title)

if [[ ${PCTL} == "" ]]; then
	echo "No Music Played"
else
	echo "${ARTS} - ${SONG}" | cut -b 1-39
fi

exit

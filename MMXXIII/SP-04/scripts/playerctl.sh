#!/bin/bash

# Closebox73
# Simple script to get playerctl status

PCTL=$(playerctl status)

if [[ ${PCTL} == "" ]]; then
	echo "No Music played"
else
	playerctl metadata xesam:artist
fi

exit

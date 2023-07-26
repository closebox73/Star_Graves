#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/JL-07/JL-07.conf &> /dev/null &

exit

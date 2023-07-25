#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/JL-06/JL-06.conf &> /dev/null &

exit

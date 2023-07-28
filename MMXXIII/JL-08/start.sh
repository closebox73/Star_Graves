#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/JL-08/JL-08.conf &> /dev/null &

exit

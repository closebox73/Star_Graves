#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/JL-05/JL-05a.conf &> /dev/null &
conky -c $HOME/.config/conky/JL-05/JL-05b.conf &> /dev/null &

exit

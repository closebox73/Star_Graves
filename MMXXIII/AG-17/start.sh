#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/AG-17/AG-17.conf &> /dev/null &

exit

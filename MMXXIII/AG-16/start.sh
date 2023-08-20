#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/AG-16/AG-16.conf &> /dev/null &

exit

#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/AG-05/AG-05.conf &> /dev/null &

exit

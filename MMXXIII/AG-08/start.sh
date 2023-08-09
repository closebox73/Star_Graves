#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/AG-08/AG-08.conf &> /dev/null &

exit

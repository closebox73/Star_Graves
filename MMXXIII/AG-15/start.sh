#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/AG-15/AG-15.conf &> /dev/null &

exit

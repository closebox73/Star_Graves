#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/AG-12/AG-12.conf &> /dev/null &

exit

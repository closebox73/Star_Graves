#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/AG-10/AG-10.conf &> /dev/null &

exit

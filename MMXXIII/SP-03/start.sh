#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/SP-03/SP-03.conf &> /dev/null &

exit

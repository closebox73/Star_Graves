#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/SP-01/SP-01.conf &> /dev/null &

exit

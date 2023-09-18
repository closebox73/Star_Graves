#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/SP-05/SP-05.conf &> /dev/null &

exit

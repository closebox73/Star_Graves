#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/AG-11/AG-11a.conf &> /dev/null &
conky -c $HOME/.config/conky/AG-11/AG-11b.conf &> /dev/null &
conky -c $HOME/.config/conky/AG-11/AG-11c.conf &> /dev/null &

exit

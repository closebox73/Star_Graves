#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/AG-06/AG-06a.conf &> /dev/null &
conky -c $HOME/.config/conky/AG-06/AG-06b.conf &> /dev/null &
conky -c $HOME/.config/conky/AG-06/AG-06c.conf &> /dev/null &

exit

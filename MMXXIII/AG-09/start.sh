#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/AG-09/AG-09.conf &> /dev/null &

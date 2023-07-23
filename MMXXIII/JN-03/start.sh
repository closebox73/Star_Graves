#!/usr/bin/env bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/JN-03/JN-03a.conf &> /dev/null &
conky -c $HOME/.config/conky/JN-03/JN-03b.conf &> /dev/null &

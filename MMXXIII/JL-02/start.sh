#!/bin/bash

killall conky
sleep 2s
		
conky -c $HOME/.config/conky/JL-02/JL-02.conf &> /dev/null &

exit

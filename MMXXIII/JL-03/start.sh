#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.config/conky/JL-03/JL-03.conf &> /dev/null &

exit

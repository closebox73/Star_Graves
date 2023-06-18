#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.config/conky/JN-04/JN-04.conf &> /dev/null &

exit

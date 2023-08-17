#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.config/conky/AG-14/AG-14.conf &> /dev/null &

exit

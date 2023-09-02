#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.config/conky/SP-02/SP-02.conf &> /dev/null &

exit

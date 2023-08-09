#!/usr/bin/env bash

# This script is to change bg.png color

COLOR=${1}

echo "Processing....."
sleep 2s

echo "Stoping AG-08"
killall conky

sleep 0.7s
echo "Creating bg.png"
sleep 0.2s
convert -size 480x120 xc:#$COLOR ~/.config/conky/AG-08/res/bg.png
convert -size 480x120 xc:none -draw "roundrectangle 0,0,480,120,61,61" png:- | convert ~/.config/conky/AG-08/res/bg.png -matte - -compose DstIn -composite ~/.config/conky/AG-08/res/bg.png

sleep 1s
echo "Success.."

sleep 1s
echo "Restarting AG-08..."
sleep 0.2s
conky -c $HOME/.config/conky/AG-08/AG-08.conf &> /dev/null &

sleep 3s
echo "Done"

exit

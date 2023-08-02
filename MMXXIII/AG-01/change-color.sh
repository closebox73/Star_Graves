#!/usr/bin/env bash

# This script is linked to AG-01.conf lines
# So don't  add a line there unless you change here too

COLOR=${1}

echo "Processing....."
sleep 2s

echo "Stoping AG-01"
killall conky

sleep 0.7s
echo "Creating bg1.png"
convert -size 100x100 xc:#$COLOR ~/.config/conky/AG-01/res/bg1.png

sleep 0.7s
echo "Set up Accent"
sed -i "32s|color1 = .*|color1 = '${COLOR}',|" ~/.config/conky/AG-01/AG-01.conf &

sleep 1s
echo "Success.."

sleep 1s
echo "Restarting AG-01..."
conky -c $HOME/.config/conky/AG-01/AG-01.conf &> /dev/null &

sleep 5s
echo "Done"

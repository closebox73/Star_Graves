#!/usr/bin/env bash

# This script is linked to JN-04.conf lines
# So don't  add a line there unless you change here too

COLOR=${1}

echo "Processing....."
sleep 2s

echo "Stoping JN-04"
killall conky

sleep 0.7s
echo "Creating bg2.png"
convert -size 80x80 xc:#$COLOR ~/.config/conky/JN-04/res/bg2.png

sleep 0.7s
echo "Set up Accent"
sed -i "32s|color1 = .*|color1 = '${COLOR}',|" ~/.config/conky/JN-04/JN-04.conf &

sleep 1s
echo "Success.."

sleep 1s
echo "Restarting JN-04..."
conky -c $HOME/.config/conky/JN-04/JN-04.conf &> /dev/null &

sleep 5s
echo "Done"

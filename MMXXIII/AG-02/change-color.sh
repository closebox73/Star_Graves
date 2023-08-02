#!/usr/bin/env bash

# v2.0
# Closebox73
# This script was created to make it easier to change accent color of the AG-02 theme,
# without using any other application, the script is use HEX color code
# if you wrong when write or the color is not exist it will be pink

sleep 0.5s

if [ -x /usr/bin/figlet ] ; then
    figlet -t "AG-02 Light"
    echo "Color changer script"
    else
    echo "AG-02 Light color changer"
fi

COLOR=${1}

echo "Processing....."
sleep 2s

echo "Stoping AG-02"
killall conky

sleep 0.7s
echo "Creating bg1.png"
convert -size 100x100 xc:#$COLOR ~/.config/conky/AG-02/res/bg1.png

sleep 0.7s
echo "Set up Accent"
sed -i "32s|color1 = .*|color1 = '${COLOR}',|" ~/.config/conky/AG-02/AG-02.conf &

sleep 1s
echo "Success.."

sleep 1s
echo "Restarting AG-02..."
conky -c $HOME/.config/conky/AG-02/AG-02.conf &> /dev/null &

sleep 5s
echo "Done"

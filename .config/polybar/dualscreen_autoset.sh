#/bin/bash

if xrandr | grep -q 'eDP-1 connected' && xrandr | grep -q 'HDMI-1 connected'
then
    xrandr --output eDP-1 --auto --left-of HDMI-1
fi

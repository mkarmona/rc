#!/bin/bash
source ~/.bashrc
xrandr --dpi eDP1
xrdb -load ~/.Xresources ~/.Xdefaults
dbus-launch --exit-with-session /usr/local/bin/fvwm3


#!/bin/bash

echo "scaling x1 HDMI2 and setting the adequate panning"
xrandr --output HDMI-2 --scale 1x1 --panning 1280x720+2560+0

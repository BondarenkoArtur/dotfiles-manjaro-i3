#!/bin/sh

laptop="eDP1"
external="DP1"
hdmi="HDMI1"

xrandr --screen 0 --size 1920x1200 

xrandr --output $laptop --off \
  --output $hdmi --off \
  --output $external --primary --size 1920x1200 --scale 1x1

xrandr --dpi 98

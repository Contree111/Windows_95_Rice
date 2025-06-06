#!/bin/bash

# Kill any existing xwinwrap instance
pkill xwinwrap

# Small delay to ensure i3 has reloaded and Polybar is on top
sleep 1

# Launch xwinwrap + mpv as wallpaper
nice xwinwrap -b -fs -ni -nf -un -ov -fdt -argb -g 1920x1080+0+0 -- \
  mpv -wid WID --loop --no-audio --panscan=1.0 --no-osc --no-osd-bar --quiet ~/.config/wallpapers/output.avi

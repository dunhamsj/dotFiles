#!/bin/sh

# Filename: ${HOME}/.xinitrc
# Soft-linked from /mnt/shared/documents/dotFiles/xinitrc

# Disable screensaver
xset s off
xset -dpms

# Set keyboard key repeat rate
xset r rate 500 40
xset -r 26 # Stop `e` key from auto-repeating

# Set background to random image in specified directory
feh --no-fehbg --bg-max --randomize /mnt/shared/pictures/wp

# Start picom using custom conf file
picom --config ${XDG_CONFIG_HOME}/picom/picom.conf &

# Use two monitors, not mirrored
#xrandr --output HDMI-1 --auto --right-of DP-1 &

# Execute window manager
exec i3 -c /mnt/shared/documents/dotFiles/i3.conf

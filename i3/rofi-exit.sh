#!/bin/bash

# Use Rofi to show the menu
chosen=$(echo -e "Logout\nReboot\nShutdown\nCancel" | rofi -dmenu -i -p "Exit Menu" -normal-window)

case "$chosen" in
    Logout)
        i3-msg exit
        ;;
    Reboot)
        systemctl reboot
        ;;
    Shutdown)
        systemctl poweroff
        ;;
    Cancel)
        exit 0
        ;;
    *)
        exit 1
        ;;
esac


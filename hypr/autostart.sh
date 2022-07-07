#!/bin/sh

## Autostart scripts for HyprWM, created by Pentacloud, 07/07/22

# Kill apps before restarting Hypr
killall -9 ksuperkey dunst xfce4-power-manager

# Fix cursor upon user login
xsetroot -cursor_name left_ptr &

# Launch policy kit agent
if [[ `pidof xfce-polkit` ]]; then
    /usr/lib/xfce-polkit/xfce-polkit &
fi

# Super key for Rofi
ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_L|F1' &

# Launch power manager
xfce4-power-manager &

# Launch compositor
picom --experimental-backends --config ~/.config/hypr/picom.conf &

# Start notification daemon
dunst -conf ~/.config/hypr/dunstrc &

# Restore wallpaper
~/.fehbg &

# Start Emacs daemon
emacs --daemon &

## EOF ##

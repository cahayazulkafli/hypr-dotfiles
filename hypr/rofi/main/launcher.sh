#!/usr/bin/env bash

## Created by Pentacloud

theme="style_3"

dir="$HOME/.config/hypr/rofi/main"
styles=($(ls -p --hide="colors.rasi" $dir/styles))
color="${styles[$(( $RANDOM % 10 ))]}"

rofi -no-lazy-grab -show drun \
-modi run,drun,window \
-theme $dir/"$theme"


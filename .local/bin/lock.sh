#!/bin/bash

# set the icon and a temporary location for the screenshot to be stored
icon="$HOME/.local/share/icons/misc/lock-icon-red.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

# take a screenshot
scrot "$tmpbg"

convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -f -i "$tmpbg"

rm -rf $tmpbg

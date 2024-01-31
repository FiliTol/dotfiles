#! /bin/sh

xdotool type $(grep -v '^#' ~/Nextcloud/Data/bookmarks | rofi -dmenu -i -l 50 | cut -d' ' -f1)

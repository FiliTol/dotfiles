#! /bin/sh

theme="$HOME/dotfiles/rofi/themes/verical.rasi"

xdotool type $(grep -v '^#' ~/Nextcloud/Data/bookmarks | rofi -no-config -m eDP1 -p "Search bookmark" -font "JetbrainsMono Nerd Font 12" -dmenu -i -l 20 | cut -d' ' -f1)

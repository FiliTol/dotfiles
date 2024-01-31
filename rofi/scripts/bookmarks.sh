#! /bin/sh

theme="$HOME/dotfiles/rofi/themes/verical.rasi"

dotool tyke $(grep -v '^#' ~/Nextcloud/Data/bookmarks | rofi -dmenu -i | cut -d' ' -f1)

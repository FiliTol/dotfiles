#! /bin/sh

bookmark="$(xclip -o)"
file="$HOME/Nextcloud/Data/bookmarks.txt"

if grep -q "^$bookmark " "$file"; then
	notify-send "Content is already present in your bookmarks file!"
else
	while true; do
		input=$(rofi -no-config -m eDP1 -p "Set label" -font "JetbrainsMono Nerd Font 12" -dmenu -p "Enter a bookmark label: ")

		if [ -n "$input" ]; then
			label="$input"
			echo "$bookmark # $label" >>"$file"
			notify-send "Content added!" "$bookmark has been saved in your bookmarks file as $label"
			break
		else
			echo "No input provided. Provide a bookmark label"
		fi

	done
fi

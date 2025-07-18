#!/bin/bash

CONFIG="$HOME/.config/waypaper/config.ini"
SCRIPT_TO_RUN="$HOME/Linux-Stuff/bashScripts/themeChanger.sh"

# Get initial wallpaper
old=$(awk -F' *= *' '/^wallpaper *=/ { print $2 }' "$CONFIG")
new=''

# Watch for changes to the config file
inotifywait -m -e close_write "$CONFIG" | while read -r filename event; do
    new=$(awk -F' *= *' '/^wallpaper *=/ { print $2 }' "$CONFIG")

    # Only run the script if the wallpaper actually changed
    if [[ "$new" != "$old" ]]; then
        echo "Wallpaper changed:"
        echo "Old: $old"
        echo "New: $new"

        "$SCRIPT_TO_RUN"

        # Only after running the script, update the old value
        old="$new"
    fi
done


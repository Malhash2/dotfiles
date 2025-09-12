#!/bin/bash

# Extract wallpaper path from Waypaper config
wallpaper=$(awk -F' *= *' '/^wallpaper *=/ { print $2 }' ~/.config/waypaper/config.ini)
wallpaper="${wallpaper/#\~/$HOME}"  # Expand ~ to full path


# Check if the file exists
if [ ! -f "$wallpaper" ]; then
    echo "Wallpaper not found: $wallpaper"
    exit 1
fi


# Handle video wallpaper (e.g. .mp4)
if [[ "$wallpaper" =~ \.mp4$ ]]; then
    echo "[INFO] Extracting frame from video wallpaper..."
    timestamp=$(date +%s)
    frame="/tmp/frame.jpg"
    ffmpeg -i "$wallpaper" -ss 00:00:01 -vframes 1 "$frame" -y

    wal -i "$frame"
    killall mpvpaper
    waypaper --restore
else
    wal -i "$wallpaper"
    magick "$wallpaper" /tmp/frame.jpg
fi

# Clear existing wal colors
wal -c

#do stuff with the wallpaper
mv ~/.cache/wal/ghostty_colors ~/.config/ghostty/themes/pywal_theme 

sed -n 's/--\([^:]*\): \(#[0-9a-fA-F]*\);/@define-color \1 \2;/p' ~/.cache/wal/colors.css > ~/.config/waybar/colors.css
    razer-cli -e multicolor,xpalette

    #for nvim
    for sock in /run/user/1000/nvim.*; do
	if [ -S "$sock" ]; then
	    nvr --servername "$sock" --remote-send '<Esc>:lua require("pywal16").setup()<CR>' --nostart
	    nvr --servername "$sock" --remote-send '<Esc>:lua require("lualine").setup(require("plugins.lualine"))<CR>' --nostart
	fi
    done

    pkill waybar && waybar &
    ~/internet-stuff/pywal-obsidianmd/./pywal-obsidianmd.sh "/home/Moshimi/Documents/Obsidian Vault"

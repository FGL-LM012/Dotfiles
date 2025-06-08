#!/usr/bin/env bash

sleep 0.1 

# Path to your wallpapers directory
WALLPAPER_DIR="$HOME/Pictures/wallpapers/walls-catppuccin-mocha"
# Time interval in seconds to change wallpapers 
INTERVAL=$1

# Check if the interval is provided, otherwise default to 1 hour 
if [ -z "$INTERVAL" ]; then
    INTERVAL=3600
fi

# Infinite loop to change wallpapers every INTERVAL seconds
while true; do
    CURRENT_WALL=$(hyprctl hyprpaper listloaded)
    # Select a random wallpaper
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

    # Apply the wallpaper using hyprpaper
    hyprctl hyprpaper reload ,"$WALLPAPER"

    # Wait for the specified interval before changing again
    sleep "$INTERVAL"
done

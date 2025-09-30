#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers"

# Select a random wallpaper
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( \
    -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o \
    -iname "*.gif" -o -iname "*.bmp" -o -iname "*.tiff" -o \
    -iname "*.tif" -o -iname "*.webp" -o -iname "*.svg" \
    \) | shuf -n1)

# Apply the wallpaper using hyprpaper
hyprctl hyprpaper reload ,"$WALLPAPER"

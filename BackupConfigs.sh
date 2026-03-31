#!/bin/bash

BACKUPDIR="$HOME/backup/arch-configs"
WALLPAPERDIR="$HOME/Pictures/wallpapers"

# Create backup directory
mkdir -p "$BACKUPDIR"

# Copy configs
cp -r "$HOME/.config/hypr" "$BACKUPDIR/"
cp -r "$HOME/.config/nvim" "$BACKUPDIR/"
cp -r "$HOME/.config/wofi" "$BACKUPDIR/"
cp -r "$HOME/.config/wlogout" "$BACKUPDIR/"
cp -r "$HOME/.config/waybar" "$BACKUPDIR/"
cp -r "$HOME/.config/kitty" "$BACKUPDIR/"
cp -r "$HOME/.config/wal" "$BACKUPDIR/"
cp -r "$HOME/.config/swaync" "$BACKUPDIR/"
cp -r "$HOME/.config/swappy" "$BACKUPDIR/"
cp -r "$HOME/.config/nwg-look" "$BACKUPDIR/"
cp -r "$HOME/.config/fastfetch" "$BACKUPDIR/"

# Copy wallpapers if exists
if [ -d "$WALLPAPERDIR" ]; then
	cp -r "$WALLPAPERDIR" "$BACKUPDIR/" && \
	echo "Wallpaper backup successful"
else
	echo "Wallpaper directory not found"
fi

echo "Backup complete"

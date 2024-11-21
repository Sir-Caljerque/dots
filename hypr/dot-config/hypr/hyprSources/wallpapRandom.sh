#!/usr/bin/bash

wallpap() (
  for d in $(hyprctl monitors all | grep -i monitor | cut -d' ' -f2 | grep -v "1" | sort -r); do
    # TODO make this better
    bg="$(find "$HOME"/Pictures/wallpaps -type f | shuf -n1)"
    hyprctl hyprpaper preload "$bg"
    hyprctl hyprpaper wallpaper "$d,$bg"
    wal -i "$bg"
  done
  hyprctl hyprpaper unload all
)
wallpap &>/dev/null

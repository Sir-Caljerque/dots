#!/bin/bash

function volNotif() {
  if wpctl get-volume @DEFAULT_SINK@ | grep -i muted; then
    volume=0
    dunstify -a "volumeNotif" -u low -r 69420 -h int:value:"$volume" -i "$HOME/.config/dunst/volume-$1.png" "MUTED" -t 2000
  else
    volume=$(wpctl get-volume @DEFAULT_SINK@ | sed -E 's/Volume: ([0-9]*\.[0-9]*)/\1/' | awk '{printf "%.0f", $1 * 100}') # get "20%" from an output that looks like : "Volume: 0.20"
    dunstify -a "volumeNotif" -u low -r 69420 -h int:value:"$volume" -i "$HOME/.config/dunst/volume-$1.png" "Volume: ${volume}%" -t 2000
  fi
}

case $1 in
  up)
    wpctl set-mute @DEFAULT_SINK@ 0 # Set volume on
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ # Increase volume
    volNotif "$1"
    ;;
  down)
    wpctl set-mute @DEFAULT_SINK@ 0 # Set volume on
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- # Decrease volume
    volNotif "$1"
    ;;
  mute)
    wpctl set-mute @DEFAULT_SINK@ toggle
    volNotif "$1"
    ;;
esac

# Check if hyprland is running and if tty is tty1
# if hyprland ISNT running, run it
if [[ -z "$HYPRLAND_INSTANCE_SIGNATURE" && "$(tty)" == "/dev/tty1" ]]; then
    start-hyprland
fi

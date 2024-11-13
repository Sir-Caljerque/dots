# Default apps
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="zen-twilight"

# PATH config
typeset -U path PATH
path=($path ~/.local/bin ~/.cargo/bin)

# Default folders
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_SCREENSHOTS_DIR="$HOME/Pictures/screenshots"

# Set locale
export LC_ALL="en_US.UTF-8"

# Colors!
export MANPAGER="nvim +Man!"

# Set wayland env variables
export GDK_BACKEND=wayland
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi

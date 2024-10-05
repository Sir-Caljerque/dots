
# Default apps
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="firefox"

# FZF options
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --smart-case"
export FZF_DEFAULT_OPTS="--preview='bat --paging=never --color=always {}' --ansi --highlight-line"
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none
  --color=bg+:#283457 \
  --color=bg:#16161e \
  --color=border:#27a1b9 \
  --color=fg:#c0caf5 \
  --color=gutter:#16161e \
  --color=header:#ff9e64 \
  --color=hl+:#2ac3de \
  --color=hl:#2ac3de \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#2ac3de \
  --color=query:#c0caf5:regular \
  --color=scrollbar:#27a1b9 \
  --color=separator:#ff9e64 \
  --color=spinner:#ff007c \
"

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

_comp_options+=(globdots) # With hidden files

# Set wayland env variables
export GDK_BACKEND=wayland
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi

# Check if hyprland is running and if tty is tty1
# if hyprland ISNT running, run it
if [[ -z "$HYPRLAND_INSTANCE_SIGNATURE" && "$(tty)" == "/dev/tty1" ]]; then
    Hyprland
fi

. "$HOME/.cargo/env"

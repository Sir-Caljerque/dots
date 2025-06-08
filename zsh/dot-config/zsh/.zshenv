# Default apps
export EDITOR="nvim"
export VISUAL="nvim"
# export BROWSER="zen-twilight" ### Kinda useless, keeping it just in case
# better off running something like `sed "%s/old-browser/new-browser/g"` on /usr/share/applications/mimeinfo.cache

# PATH config
typeset -U path PATH
path+=(~/.local/bin ~/.cargo/bin)

# Default folders
export XDG_SCREENSHOTS_DIR="$HOME/Pictures/screenshots"

# Set locale
export LC_ALL="en_US.UTF-8"

# Colors!
export MANPAGER="nvim +Man!"

# Set wayland env variables
# export GDK_BACKEND=wayland,x11
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
  export MOZ_ENABLE_WAYLAND=1
fi

PATH=$(echo $PATH | tr ':' '\n' | grep -v '/usr/lib/rustup' | tr '\n' ':' | sed 's/:$//')
export PATH

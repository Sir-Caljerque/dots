# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

HISTFILE="$ZDOTDIR/.zsh_history"
HISTSIZE=2000
SAVEHIST=2000
HISTDUP=erase
### Might be annoying
KEYBOARD_HACK=\\
### Ignore the trailing '\' in a command

export KEYTIMEOUT=1

fpath+=( "$ZDOTDIR"/completions )

# Source zinit, aliases, options and zstyle config
for file in "$ZDOTDIR"/sources/*.zsh; do
    source "$file"
done
# trash-put/trash   trash files and directories.
# trash-empty         empty the trashcan(s).
# trash-list          list trashed files.
# trash-restore       restore a trashed file.
# trash-rm            remove individual files from the trashcan.

# Load completions
autoload -Uz compinit
compinit
_comp_options+=(globdots) # With hidden files

zinit cdreplay -q  # Cache completions

# Keybinds
bindkey -v  # VI mode


for file in "$ZDOTDIR"/plugins/*.zsh; do
  source "$file"
done

# for file in $ZDOTDIR/completions/*.zsh; do
#   source "$file"
# done

# keybinding sources
for file in "$ZDOTDIR"/keybindings/*.zsh; do
  source "$file"
done

# Source functions
for file in "$ZDOTDIR"/functions/*.zsh; do
  source "$file"
done

# Change starship config location
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export DEFAULT_DISPLAY="DP-2"

# Start up programs
eval "$(zoxide init --cmd cd zsh)"
source <(/usr/bin/fzf --zsh)

# FZF options
# export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --smart-case"
# export FZF_DEFAULT_COMMAND="fd -Hp"
export FZF_DEFAULT_OPTS_FILE="$XDG_CONFIG_HOME/fzf/fzfrc"
# "--preview='bat --paging=never --color=always {}' \
# --cycle \
# --scroll-off=10 \
# --height=~50% \
# --border \
# --info=inline \
# --highlight-line \
# --info=inline-right \
# --ansi \
# --layout=reverse \
# --border \
# --color=bg+:#283457 \
# --color=bg:#16161e \
# --color=border:#27a1b9 \
# --color=fg:#c0caf5 \
# --color=gutter:#16161e \
# --color=header:#ff9e64 \
# --color=hl+:#2ac3de \
# --color=hl:#2ac3de \
# --color=info:#545c7e \
# --color=marker:#ff007c \
# --color=pointer:#ff007c \
# --color=prompt:#2ac3de \
# --color=query:#c0caf5:regular \
# --color=scrollbar:#27a1b9 \
# --color=separator:#ff9e64 \
# --color=spinner:#ff007c
# "

startup

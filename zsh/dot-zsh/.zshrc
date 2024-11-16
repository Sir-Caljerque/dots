clear

rand=$((RANDOM))

[[ -z "$NVIM" ]] &&
  if ((rand % 2 == 0)); then
    fastfetch --logo ~/Pictures/wallpaps/bridWithKicks.png --logo-width 48 --logo-height 27
  else
    fastfetch --logo ~/Pictures/wallpaps/bridNoKicks.png --logo-width 48 --logo-height 27
  fi

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=2000
setopt autocd extendedglob nomatch

unsetopt beep
bindkey -v
export KEYTIMEOUT=1
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zsh/.zshrc'

fpath+=("$ZDOTDIR/completions")
autoload -Uz compinit
compinit
# End of lines added by compinstall
_comp_options+=(globdots) # With hidden files

# fpath=(~/.zsh/functions $fpath)
# autoload -Uz $functions_in_path

# themes/plugin sources
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# Substring search keybinds
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

for file in $ZDOTDIR/plugins/*.zsh; do
  source "$file"
done

# for file in $ZDOTDIR/completions/*.zsh; do
#   source "$file"
# done

# keybinding sources
for file in $ZDOTDIR/keybindings/*.zsh; do
  source "$file"
done

# Source aliases, options and zstyle config
for file in $ZDOTDIR/Sources/*.zsh; do
  source "$file"
done
# trash-put/trash   trash files and directories.
# trash-empty         empty the trashcan(s).
# trash-list          list trashed files.
# trash-restore       restore a trashed file.
# trash-rm            remove individual files from the trashcan.

# Source functions
for file in $ZDOTDIR/functions/*.zsh; do
  source "$file"
done

# Change starship config location
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Start up programs
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"

# FZF options
# export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --smart-case"
export FZF_DEFAULT_COMMAND="fd -Hp"
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

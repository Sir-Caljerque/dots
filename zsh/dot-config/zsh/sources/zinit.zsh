# https://github.com/zdharma-continuum/zinit#ice-modifiers
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# themes/plugin sources
zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

zinit ice wait"0b" lucid atload"bindkey '^[[A' history-substring-search-up; bindkey '^[[B' history-substring-search-down"
zinit light zsh-users/zsh-history-substring-search

# zinit ice wait lucid
# zinit light Aloxaf/fzf-tab

# Prompt (starship)
# zinit ice as"command" from"gh-r" \
          # atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          # atpull"%atclone" src""
# zinit light starship/starship

zinit ice lucid atload'eval "$(starship init zsh)"'; zinit load zdharma-continuum/null

#Existing plugin snippets 
# zinit snippet OMZP::git

zinit cdreplay -q  # Cache completions

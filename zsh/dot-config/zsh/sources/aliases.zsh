# aliases
alias ...='../..'
alias ....='../../..'
alias zconf="nvim $ZDOTDIR/.zshrc"
alias nv='nvim'

alias ls='eza -h --icons=auto --color=auto --hyperlink'
alias l='ls -A'
alias ll='ls -ol'
alias la='l -l'
alias lall='la -T'

alias icat='kitten icat'
alias rm='trash'
alias rmpty='trash-empty'
alias rmlst='trash-list'
# trash-put/trash   trash files and directories.
# trash-empty         empty the trashcan(s).
# trash-list          list trashed files.
# trash-restore       restore a trashed file.
# trash-rm            remove individual files from the trashcan.
alias ssh='kitty +kitten ssh'

alias rsbook='rustup doc --book &>/dev/null'
alias rsstd='rustup doc --std &>/dev/null'

alias brg='batgrep'

alias we='watchexec --stop-timeout 2s'

### GLOBAL ALIAS ###
alias -g ip='ip --color=auto'
alias -g grep='grep --color=auto'
alias -g diff='diff --color=auto'
alias -g G='| grep'
alias -g L='| less'
alias -g B='| bat'
alias -g H='| head'
alias -g T='| tail'
alias -g W='| wc'
alias -g C='| wl-copy'
alias -g SN='| sort -n'
alias -g SU='| sort -u'

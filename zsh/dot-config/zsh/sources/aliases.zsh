# aliases
alias zconf="nvim ~/.zsh/.zshrc"
alias nv='nvim'

alias ls='lsd -hF --color=auto'
alias l='ls -A'
alias ll='ls -l'
alias la='l -l'
alias lall='la -R'

alias icat='kitten icat'
alias rm='trash'
alias rmpty='trash-empty'
alias rmlst='trash-list'
# trash-put/trash   trash files and directories.
# trash-empty         empty the trashcan(s).
# trash-list          list trashed files.
# trash-restore       restore a trashed file.
# trash-rm            remove individual files from the trashcan.
alias paru='paru --bottomup -a'
alias ssh='kitty +kitten ssh'

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

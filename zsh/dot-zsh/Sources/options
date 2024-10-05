# new opts
setopt correct interactivecomments numericglobsort 
setopt hist_expire_dups_first hist_ignore_dups
setopt appendhistory
setopt notify
setopt numericglobsort
setopt share_history

zstyle ':completion::complete:*' gain-privileges 1
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:default' list-colors # ${(s.:.)LS_COLORS}
zstyle ':completion:*' rehash true
zstyle ':completion:*' verbose true
zstyle ':completion:*' group-name
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
#zstyle ':completion:*' file-list all
#zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the characters to insert
#zstyle ':completion:*' auto-description 'specify: %d'
#zstyle ':completion:*' completer _expand _complete
#zstyle ':completion:*' format 'Completing %d'
#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
#zstyle ':completion:*' use-compctl false

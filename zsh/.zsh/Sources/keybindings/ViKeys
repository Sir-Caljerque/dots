bindkey "^P" vi-up-line-or-history
bindkey "^N" vi-down-line-or-history

bindkey "^[[1~" vi-beginning-of-line   # Home
bindkey "^[[4~" vi-end-of-line         # End
bindkey '^[[2~' beep                   # Insert
bindkey '^[[3~' delete-char            # Del
bindkey '^[[5~' vi-backward-blank-word # Page Up
bindkey '^[[6~' vi-forward-blank-word  # Page Down

# Move around completion list with hjkl
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'l' vi-forward-char

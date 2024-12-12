function fz() {
    export FZF_DEFAULT_COMMAND="fd -Hp --strip-cwd-prefix"
    local dir="$(/usr/bin/fzf --preview='preview {}')"

    if [[ -f "$dir" ]]; then
        nvim $dir
    elif [[ -d "$dir" ]]; then
        cd "$dir"
    fi
    unset FZF_DEFAULT_COMMAND
}


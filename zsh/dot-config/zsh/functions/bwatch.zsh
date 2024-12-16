function bw() {
    if [[ $# -lt 2 ]]; then
        echo "Usage: bw [file] [command]"
        return
    fi

    local farg="$1"
    shift
    batwatch --watcher=entr --clear --color -f "$farg" -x "$@"
}

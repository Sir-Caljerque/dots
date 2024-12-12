function startup() {
    clear
    rand=$((RANDOM))

    [[ -z "$NVIM" ]] &&
        if ((rand % 2 == 0)); then
            fastfetch --logo ~/Pictures/bridWithKicks.png --logo-width 48 --logo-height 27
        else
            fastfetch --logo ~/Pictures/bridNoKicks.png --logo-width 48 --logo-height 27
        fi
}

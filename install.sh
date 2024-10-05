#!/usr/bin/env bash

remove_dirs() {
    # Remove everything that is going to be installed on the machine
    tmpdir=$(mktemp --directory --tmpdir=~/.local/share/Trash/files/)
    mv -v ~/.config/{hypr,nvim,yazi,starship,kitty} ~/.zsh{,rc,env} ~/Certs "$tmpdir"
    echo "Your file backups are in a temporary dir: $tmpdir"
}


install_packages() {
    # package is in "extra" repo, paru should send packages back to pacman to install
    sudo paru -S "$(cat packages.txt)"
}

symlinks() {
    for app in $(ls); do
        if [ -d "$app" ]; then
            stow -v --dotfiles --taget=$HOME/ "$app"
        fi
    done
}

read -rsp "do you want to uninstall your current dotfiles? [Yy]" choice

case "$choice" in
    [yY]*)
        remove_dirs
    ;;
    [nN]*)
    ;;
    *) echo invalid choice
    ;;
esac

read -rsp "do you want to install pacman packages? [y/n]" choice

case "$choice" in
    [yY]*)
        install_packages
    ;;
    [nN]*)
    ;;
    *) echo invalid choice
    ;;
esac

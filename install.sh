#!/usr/bin/env bash

remove_dirs() {
  # Remove everything that is going to be installed on the machine
  tmpdir=$(mktemp --directory --tmpdir=~/.local/share/Trash/files/)
  mv -v ~/.config/{hypr,nvim,yazi,starship,kitty} ~/.zsh{,rc,env} ~/Certs ~/.config/fuzzel "$tmpdir"
  echo "Your file backups are in a temporary dir: $tmpdir"
}

symlinks() {
  for app in ./*; do
    if [ -d "$app" ]; then
      stow -v --dotfiles --taget=$HOME "$app"
    fi
  done
}

symlinks

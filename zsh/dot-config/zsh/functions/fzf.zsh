function fzf() {
  local dir="$(/usr/bin/fzf)"
  if [[ -n $dir ]]; then
    nvim $dir
  fi
}

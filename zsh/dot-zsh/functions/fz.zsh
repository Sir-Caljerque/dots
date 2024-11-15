function fz() {
  local dir="$(fzf)"
  if [[ ! -z $dir ]]; then
    nvim $dir
  fi
}

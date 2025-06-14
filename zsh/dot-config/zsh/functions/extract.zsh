extract() {
  if [ -f "$1" ]; then
    case "$1" in
    *.7z)
      7z x "$1"
      ;;
    *.tar)
      tar xvf "$1"
      ;;
    *.tar.bz2)
      tar xjvf "$1"
      ;;
    *.tar.gz)
      tar xzvf "$1"
      ;;
    *.tbz2)
      tar xjvf "$1"
      ;;
    *.tgz)
      tar xzvf "$1"
      ;;
    *.bz2)
      bunzip2 "$1"
      ;;
    *.gz)
      gunzip "$1"
      ;;
    *.zip)
      unzip "$1"
      ;;
    *.rar)
      unrar x "$1"
      ;;
    *.Z)
      uncompress "$1"
      ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

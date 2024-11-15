if ! (( $+commands[rustup] && $+commands[cargo] )); then
  return
fi

if [[ ! -f "$ZDOTDIR/plugins/completions/_cargo" ]]; then
  autoload -Uz _cargo
  typeset -g -A _comps
  _comps[cargo]=_cargo
fi

if [[ ! -f "$ZDOTDIR/plugins/completions/_rustup" ]]; then
  autoload -Uz _rustup
  typeset -g -A _comps
  _comps[rustup]=_rustup
fi



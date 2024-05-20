if (( $+commands[starship] )); then
  # ignore ru-my-zsh theme
  unset ZSH_THEME

  eval "$(starship init zsh)"
else
  echo '[ru-my-zsh] starship not found, please install it from https://starship.rs'
fi

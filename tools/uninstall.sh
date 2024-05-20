if hash chsh >/dev/null 2>&1 && [ -f ~/.shell.pre-ru-my-zsh ]; then
  old_shell=$(cat ~/.shell.pre-ru-my-zsh)
  echo "Switching your shell back to '$old_shell':"
  if chsh -s "$old_shell"; then
    rm -f ~/.shell.pre-ru-my-zsh
  else
    echo "Could not change default shell. Change it manually by running chsh"
    echo "or editing the /etc/passwd file."
    exit
  fi
fi

read -r -p "Are you sure you want to remove Ru My Zsh? [y/N] " confirmation
if [ "$confirmation" != y ] && [ "$confirmation" != Y ]; then
  echo "Uninstall cancelled"
  exit
fi

echo "Removing ~/.ru-my-zsh"
if [ -d ~/.ru-my-zsh ]; then
  rm -rf ~/.ru-my-zsh
fi

if [ -e ~/.zshrc ]; then
  ZSHRC_SAVE=~/.zshrc.omz-uninstalled-$(date +%Y-%m-%d_%H-%M-%S)
  echo "Found ~/.zshrc -- Renaming to ${ZSHRC_SAVE}"
  mv ~/.zshrc "${ZSHRC_SAVE}"
fi

echo "Looking for original zsh config..."
ZSHRC_ORIG=~/.zshrc.pre-ru-my-zsh
if [ -e "$ZSHRC_ORIG" ]; then
  echo "Found $ZSHRC_ORIG -- Restoring to ~/.zshrc"
  mv "$ZSHRC_ORIG" ~/.zshrc
  echo "Your original zsh config was restored."
else
  echo "No original zsh config found"
fi

echo "Thanks for trying out Ru My Zsh. It's been uninstalled."
echo "Don't forget to restart your terminal!"

for file in ~/dotfiles/zsh/setup/*.zsh; do
  source $file
done

autoload -U compinit && compinit

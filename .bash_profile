export EDITOR="nano"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# load bash completion or install it and then load it
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
else
  brew install bash-completion
  . $(brew --prefix)/etc/bash_completion
fi

alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias cleanup='rm ~/Downloads/*.nzb && rm ~/Downloads/*.torrent'
alias code='open -a "Visual Studio Code"'
alias cleanup='rm ~/Downloads/*.nzb && rm ~/Downloads/*.torrent'

. ./.bash_prompt
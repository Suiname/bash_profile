export EDITOR="nano"

exists()
{
  command -v "$1" >/dev/null 2>&1
}

if ! exists brew; then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if ! exists pyenv; then
  echo "Installing pyenv..."
  brew update
  brew install pyenv
fi

if exists pyenv; then
  eval "$(pyenv init -)"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if ! exists nvm; then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

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

. $( dirname "${BASH_SOURCE[0]}" )/.bash_prompt

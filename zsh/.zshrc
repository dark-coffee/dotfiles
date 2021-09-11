# .zshrc 
# dark-coffee

# path to oh-my-zsh
export ZSH="/Users/andy/.oh-my-zsh"

# custom zsh theme
ZSH_THEME="dc-lambda"

# completion waiting dots
COMPLETION_WAITING_DOTS="true"

# plugins
plugins=(ansible awscli brew docker docker-compose emoji-clock git gh )
source $ZSH/oh-my-zsh.sh

# set local & remote editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='code -w'
fi

# aliases
alias cls="clear"
alias fucking="sudo"
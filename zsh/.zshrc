# .zshrc
# dark-coffee

# path to oh-my-zsh
export ZSH="/Users/andy/.oh-my-zsh"

# custom zsh theme
ZSH_THEME="dc-lambda"

# completion waiting dots
COMPLETION_WAITING_DOTS="true"

# plugins
plugins=(ansible brew docker docker-compose emoji-clock git gh thefuck)
eval $(thefuck --alias)
source $ZSH/oh-my-zsh.sh
source $(brew --prefix)/etc/profile.d/z.sh

# set local & remote editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='code -w'
fi

# aliases
alias cls="clear"
alias fucking="sudo"
alias ap="ansible-playbook"

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Mina S. Aziz <minaz922@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# TODO: cleanup leftover bash-specific configs

# NVM config (mostly handled by prezto 'nvm' module)
# export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Add yarn global bin dir to PATH
#export PATH="$PATH:`yarn global bin`"

# Enable open new terminal in current directory in termite
. /etc/profile.d/vte.sh

# Fix 'Unknown terminal type' when connecting to a server via SSH
# export TERM=xterm

# Fix tmux 256-color mode
# [[ $TMUX = "" ]] && export TERM=xterm-256color

# Set default browser
export BROWSER=google-chrome-beta

setopt clobber

bindkey -v
bindkey '^R' history-incremental-search-backward

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Vim aliases
alias vim="nvim"
alias vimdiff="nvim -d"
#alias sudo="sudo "

# thefuck command correction
# eval $(thefuck --alias)

# .gitignore generator
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# fasd module
# eval "$(fasd --init auto)"

# Fuzzy file finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set Ag (the_silver_searcher) ignore file location
alias ag='ag --path-to-ignore ~/.ignore'

# Add user-installed python packages to PATH
PYTHONPATH=$(python -c "import site; print(site.USER_SITE)"):$PYTHONPATH

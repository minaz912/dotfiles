#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Development/git

## npm global dir
#export PATH=/home/minaz/.npm-global/bin:$PATH
#NPM_CONFIG_PREFIX=/home/minaz/.npm-global

# use system libs for android emulator
# export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1

# export nvm
# export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# add yarn global bin dir to PATH
#export PATH="$PATH:`yarn global bin`"

# Enable open new terminal in current directory in termite
. /etc/profile.d/vte.sh

# Fix 'Unknown terminal type' when connecting to a server via SSH
# export TERM=xterm
# [[ $TMUX = "" ]] && export TERM=xterm-256color

# Open links in termite using Chrome
export BROWSER=google-chrome-beta

setopt clobber

bindkey -v
bindkey '^R' history-incremental-search-backward

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word


alias vim="nvim"
alias vimdiff="nvim -d"
#alias sudo="sudo "

# eval $(thefuck --alias)
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
# eval "$(fasd --init auto)"

# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Fuzzy file finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh 
# source /usr/share/fzf/key-bindings.zsh
# source /usr/share/fzf/completion.zsh

# Ag (the_silver_searcher) ignore file
alias ag='ag --path-to-ignore ~/.ignore'

# add user-installed python packages to PATH
PYTHONPATH=$(python -c "import site; print(site.USER_SITE)"):$PYTHONPATH

# add anaconda binaries to PATH
export PATH="/opt/anaconda/bin:$PATH"

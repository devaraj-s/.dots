ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="chris"

# Base 16
BASE16_SCHEME="default"
BASE16_SHELL="$HOME/.base16/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

plugins=(autoenv brew docker git git-flow-avh heroku pip tmux vagrant virtualenv virtualenvwrapper)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
export EDITOR='vim'

# Language
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments

# Virtualenv
export DISABLE_VENV_CD=1

# Tmux
export DISABLE_AUTO_TITLE=true
export TERM="xterm-256color"
alias tmux="TERM=screen-256color-bce tmux"

# Source oh my zsh
source $ZSH/oh-my-zsh.sh

# Tmuxp
source $HOME/.dots/zsh/tmuxp.sh

# Pretty json
alias pretty='python -mjson.tool'

# Docker
if [ $(boot2docker status) != "running" ]
then
    boot2docker up
fi
export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375
export DOCKER_IP=$(boot2docker ip 2>/dev/null)

# Autoenv
source /usr/local/opt/autoenv/activate.sh
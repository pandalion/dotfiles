# Add local bin folders to path.
export PATH=/usr/local/bin:$PATH:~/bin
# Add Postgres to path.
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
# Add rbenv to path.
export PATH=$HOME/.rbenv/shims:$PATH
# I don't remember why this one is here
export PATH="/usr/local/sbin:$PATH"

# hub for git alias
alias git=hub

# git alias
alias g=git

# aliases for dev sanity
alias ll='ls -la'

# something for brew I don't remember
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# gitprompt stuff
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1

GREEN="\[\033[0;32m\]"
WHITE="\[\033[0;37m\]"
YELLOW="\[\033[0;33m\]"

PS1="$GREEN\h $WHITE\W$YELLOW\$(__git_ps1)$WHITE: "

# virtualenv stuff
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

source /usr/local/bin/virtualenvwrapper.sh

# Node/NVM stuff
export NODE_PATH=$(npm root -g)

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

# Other
eval "$(rbenv init -)"
export ARCHFLAGS="-arch x86_64"

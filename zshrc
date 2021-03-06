# -----------------------------------------
# PATHS
# -----------------------------------------
# Zsh adn .dotfiles bin
export PATH="$ZSH/bin:/home/fcote/.dotfiles/bin:/home/fcote/.dotfiles/bin_private:$PATH"
# /usr/local
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
# npm
export PATH="/usr/local/share/npm/bin:$PATH"
# pyenv
export PATH="/home/uabart/.pyenv/bin:$PATH"
# Man Paths
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# -----------------------------------------
# Oh My Zsh!

# Path to your oh-my-zsh installation.
export ZSH=/home/uabart/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fcote)

# Source OMZ
source $ZSH/oh-my-zsh.sh

# Load custom Git Prompt Functions
source $ZSH/custom git_custom.zsh

# Source Tmuxinator
# source $HOME/.scripts/tmuxinator.zsh

# Auto-Highlighting and Auto-suggestions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/google-chrome-stable


# -----------------------------------------
# NVM
# -----------------------------------------
# nvm (manualy source)
# export NVM_DIR=~/.nvm
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# 
# auto run `nvm use` when .nvmrc is present
# autoload -U add-zsh-hook
# load-nvmrc() {
#   if [[ -f .nvmrc && -r .nvmrc ]]; then
#     nvm use
#   fi
# }
# add-zsh-hook chpwd load-nvmrc
# 
# nvm autocompletion
# [[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion
# 
# -----------------------------------------
# PYENV
# -----------------------------------------
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# -----------------------------------------
# RBENV
# -----------------------------------------
# eval "$(rbenv init -)"


# -----------------------------------------
# PHPBREW
# -----------------------------------------
# [[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# -----------------------------------------
# EDITOR: vi
# -----------------------------------------
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    if [ -x /usr/local/bin/atom ]; then
        export EDITOR='atom'
    else
        export EDITOR='vim'
    fi
fi

# source private stuff in a .localrc file
if [[ -f $HOME/.localrc ]]; then
  source $HOME/.localrc
fi

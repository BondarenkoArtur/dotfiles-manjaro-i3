# -----------------------------------------
# Antigen
source /usr/share/zsh/scripts/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle ~/.dotfiles/oh-my-zsh/custom git_custom.zsh
antigen bundle ~/.dotfiles/oh-my-zsh/custom/plugins fcote

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle tarrasch/zsh-autoenv

antigen apply

antigen theme ~/.dotfiles/oh-my-zsh/custom/ fcote


# -----------------------------------------
# PATHS
# -----------------------------------------
# Zsh
export PATH="$ZSH/bin:$PATH"
# /usr/local
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
# npm
export PATH="/usr/local/share/npm/bin:$PATH"
# Man Paths
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# -----------------------------------------
# NVM
# -----------------------------------------
# nvm (manualy source)
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# auto run `nvm use` when .nvmrc is present
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  fi
}
add-zsh-hook chpwd load-nvmrc

# nvm autocompletion
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion


# -----------------------------------------
# EDITOR: vi.m, atom-beta, atom
# -----------------------------------------
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    if [ -x /usr/bin/atom-beta ]; then
        export EDITOR='atom-beta'
    else
        export EDITOR='atom'
    fi
fi

# source private stuff in a .localrc file
if [[ -f $HOME/.localrc ]]; then
  source $HOME/.localrc
fi

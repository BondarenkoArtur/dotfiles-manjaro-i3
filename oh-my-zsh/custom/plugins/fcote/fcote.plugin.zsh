#!/usr/bin/env bash

###
# SHORTCUTS
###

# c -> ~/Code/
c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

# h -> ~/
h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

###
# from Manjaro's default .bash_profile
###
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias fixit='sudo rm -f /var/lib/pacman/db.lck'
alias inst='sudo pacman -S'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias mirrors='sudo pacman-mirrors -g'
alias printer='system-config-printer'
alias update='yaourt -Syua'


# better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

###
# Git Aliases
###
alias gs='git status -sb'
alias gl='git pull'
alias gp='git push'
alias gd='!f() { [ \"$GIT_PREFIX\" != \"\" ] && cd "$GIT_PREFIX"; git diff --color $@ | diff-so-fancy | less --tabs=4 -RFX; }; f'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias ga='git-all'
alias wtf='git-wtf'


###
# Other Aliases
###

# flushdns, because I can never remember the full thing
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;"
# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
# Source my ZSH
alias reload!="source ~/.zshrc";


###
# Rock & Docker
###
alias rockrun80="sudo HTTP_PORT=80 rock run"
alias rockrun80dev="sudo HTTP_PORT=80 rock --env dev run"
alias rcrb="rock clean; rock build"

# docker rock
alias rocker='docker run --rm --net=host -i -t -v $(pwd):/code -w /code rockstack:latest /bin/bash'

###
# add plugin's bin directory to path
###
export PATH="$(dirname $0)/bin:$PATH"

#!/bin/sh
echo "Welcome, Andrew! 🔥"

export term=xterm-256color
export CLICOLOR=1
export LSCOLORS=Fafacxdxbxegedabagacad

GREEN=$(tput setaf 2);
YELLOW=$(tput setaf 3);
RESET=$(tput sgr0);

function c { code ${@:-.} }
alias ll="ls -1a";
alias pg="echo 'Pinging Google' && ping www.google.com";
alias ..="cd ../";
alias .2="cd ../../"
alias cz="code ~/dotfiles/.zshrc";
alias cg="code ~/dotfiles/.gitconfig";
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

function mkcd() {mkdir -p "$@" && cd "$@" || exit; }

SAVEHIST=5000
setopt EXTENDED_HISTORY
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# do not store duplications
setopt HIST_IGNORE_DUPS

# zsh auto autocomplete
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
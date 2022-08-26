autoload -Uz compinit
compinit

export ZSH="$HOME/.oh-my-zsh"

export MICRO_TRUECOLOR=1

#ZSH_THEME="half-life"
ZSH_THEME="steeef"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

bindkey '^H' backward-kill-word

alias cat="bat -pp --paging=never"

alias btop="btop --utf-force"

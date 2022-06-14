autoload -Uz compinit
compinit

export ZSH="$HOME/.oh-my-zsh"

export MICRO_TRUECOLOR=1

#ZSH_THEME="half-life"
ZSH_THEME="steeef"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

export DISPLAY=:0
alias btop="btop --utf-force"

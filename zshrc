#! /bin/zsh


# ================================================================================
# proxy
# ================================================================================
sysName=`uname`
if [[ "$sysName"=="Linux" ]] {
  export http_proxy=http://127.0.0.1:7890
  export https_proxy=http://127.0.0.1:7890
}

# ================================================================================
# editor
# ================================================================================
export EDITOR='nvim'

# ================================================================================
# path
# ================================================================================
path=('/opt/homebrew/bin' $path)
PATH=$PATH:/usr/local/mysql/bin:/usr/bin:~/dotfiles/bin
export PATH

# ================================================================================
# alias
# ================================================================================
alias vi="nvim"
alias ls="ls --color=always"
alias ll="ls -l"
alias l='ls'
alias la='ls -a'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cdv='cd ~/dotfiles/nvim'
alias cdd='cd ~/Documents/'
alias ra="ranger"
alias tl="tmux ls"

# ================================================================================
# color setting 
# ================================================================================
export CLICOLOR=1
export LSCOLORS=ExGxFxdaCxDaDahbadeche


# ================================================================================
# trash setting 
# ================================================================================
# alias rm='trash' 
# alias rl='trashlist' 
# alias ur='undelfile' 
# 
# trash() 
# { 
#   mv $@ ~/.trash/ 
# }
# 
# trashlist() 
# { 
#   echo -e "==== Garbage Lists in ~/.trash/ ====33[0m" 
#   echo -e "----Usage------" 
#   echo -e "\a33[33m-1- Use 'cleartrash' to clear all garbages in ~/.trash!!!33[0m" 
#   echo -e "\a33[33m-2- Use 'ur' to mv the file in garbages to current dir!!!33[0m" 
#   ls -al ~/.trash 
# }
# 
# undelfile() 
# { 
#   mv -i ~/.trash/$@ ./ 
# }
# 


# ================================================================================
# oh-my-zsh configuration
# ================================================================================
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# ================================================================================
# zoxide
# ================================================================================
eval "$(zoxide init zsh)"

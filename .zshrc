# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
#### END FIG ENV VARIABLES ####
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# Aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="exa --long"
alias lsa="exa --all --long"
alias dc="cd"
alias mkd="mkdir"
alias vim="nvim"
alias editor="nvim"
alias glog="git log --all --decorate --oneline --graph"
alias dps="docker ps"
alias gcam="git commit -am"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias confz="nvim ~/.zshrc"
alias confvim="nvim ~/.config/nvim/init.vim"
alias confish="nvim ~/.config/i3/config"
alias glog="git log --all --decorate --oneline --graph"
alias gcam="git commit -am"


# run the following command to get a list of all the available zsh plugins
neofetch




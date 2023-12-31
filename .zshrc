# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh_my_zsh theme
export ZSH="$HOME/.oh-my-zsh"

# powerlevel10k - a zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    sudo
    dirhistory
    kubectl
    aliases
)

source $ZSH/oh-my-zsh.sh

# Run code . in the terminal opens visual studio
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

############################# Aliases #############################
alias lt="ls -ltrha"
alias ll="ls -lh"
# alias lta="ls -ltrha"
alias usefulcommands="cat ~/.useful_commands"
alias useful_commands="cat ~/.useful_commands"

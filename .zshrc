export PATH=$HOME/bin:/usr/local/bin:'.local/bin':$PATH
# export PATH='.local/bin':$PATH
export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export FZF_DEFAULT_OPTS='--border=sharp --info=inline'
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="vim"
export TERMINAL=urxvt 
ZSH_THEME="nicoulaj"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias ls="exa -l -a"
alias ls="exa -a"
alias tr="trans :ru -b"
alias te="trans :en -b"
alias p="python3"
alias w="w3m duckduckgo.com"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

source /usr/local/opt/zsh-git-prompt/zshrc.sh

function zle-line-init zle-keymap-select {
  PROMPT="%{$fg[magenta]%}[%{$reset_color%}%~%{$fg[magenta]%}]%{$reset_color%}: "
  RPS1="$(git_super_status) $EPS1"
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U compinit
fpath=(/usr/local/share/zsh-completions $fpath)
compinit

eval "$(rbenv init -)"

export GOPATH=$HOME/Code/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

export PATH=$PATH:$HOME/.cargo/bin

export EDITOR=nvim
alias vim=nvim
alias code="cd ~/Code"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

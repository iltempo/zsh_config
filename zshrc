HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

source ~/.zsh/zsh-git-prompt/zshrc.sh

function zle-line-init zle-keymap-select {
  PROMPT="%{$fg[magenta]%}[%{$reset_color%}%~%{$fg[magenta]%}]%{$reset_color%}: "
  RPS1="$(git_super_status) $EPS1"
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export CLICOLOR=1

autoload -U compinit
fpath=(/usr/local/share/zsh-completions $fpath)
compinit

eval "$(rbenv init -)"

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

export EDITOR=vim

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

fpath=(/usr/local/share/zsh-completions $fpath)

export GOPATH=$HOME/Code/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

export PATH=$PATH:$HOME/.cargo/bin

export EDITOR=vim
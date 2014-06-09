HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

source ~/.zsh/git-prompt/zshrc.sh

function zle-line-init zle-keymap-select {
  PROMPT="%{$fg[red]%}[%{$reset_color%}%~%{$fg[red]%}]%{$reset_color%}: "
  VIM_PROMPT="%{$fg[yellow]%} [% NORMAL]%  %{$reset_color%}"
  RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_super_status) $EPS1"
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export CLICOLOR=1

autoload -U compinit
fpath=(/usr/local/share/zsh-completions $fpath)
compinit

eval "$(rbenv init -)"

export GOPATH=$HOME/go

# for zsh

export EDITOR="vim"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
#export TODOTXT_DEFAULT_ACTION=ls
#alias t='todo-txt'

export PATH=/usr/local/bin:$PATH

export JAVA_HOME=/usr/local/jdk1.8.0.121

export CHEATCOLORS=true

#使用Ctrl-p和Ctrl-n代替↑和↓
bindkey "^p" history-beginning-search-backward
bindkey "^n" history-beginning-search-forward

#Set tmux 256 color and start tmux
[ -z "$TMUX" ] && export TERM=xterm-256color && tmux -2 new


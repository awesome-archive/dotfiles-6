# for zsh

export EDITOR="vim"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

setxkbmap -option ctrl:nocaps

export PATH=/usr/local/bin:$PATH

export CHEATCOLORS=true

eval `dircolors ~/.dircolors`
#Set tmux 256 color and start tmux
[ -z "$TMUX" ] && export TERM=screen-256color && tmux -2 new

#Use vi style
#bindkey -v
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

bindkey "^p" history-beginning-search-backward
bindkey "^n" history-beginning-search-forward

export GOPATH=$HOME/App/go
export PATH=$PATH:$HOME/App/go/bin

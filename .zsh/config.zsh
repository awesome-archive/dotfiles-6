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
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
# 按键延时为1ms
export KEYTIMEOUT=1

export GO_HOME=$HOME/App/go
export PATH=$PATH:$GO_HOME/bin

export ANDROID_HOME=$HOME/Android/Sdk

export NDK_ROOT=$HOME/Android/android-ndk-r13b
export PATH=$PATH:$NDK_ROOT

export GRADLE_HOME=$HOME/Android/gradle-4.1
export PATH=$PATH:$GRADLE_HOME/bin

export ANDROID_TOOLCHAINS_HOME=$HOME/Android/android-toolchains-arm
export PATH=$PATH:$ANDROID_TOOLCHAINS_HOME/bin

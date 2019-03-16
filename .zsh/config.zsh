# for zsh

export EDITOR="vim"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

export CHEATCOLORS=true

eval `dircolors ~/.dir_colors`

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

# 禁用Ctrl-s锁住终端
stty -ixon

export ANDROID_HOME=$HOME/Android/Sdk

export ANDROID_NDK_HOME=$HOME/Android/android-ndk-r16b
#export PATH=$PATH:$ANDROID_NDK_HOME/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin

mkcd() { mkdir -p "$@" && cd "$@"; }

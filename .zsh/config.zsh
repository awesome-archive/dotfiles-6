# for zsh

export EDITOR="vim"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

export CHEATCOLORS=true

eval `dircolors ~/.dircolors`

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

export ANDROID_HOME=$HOME/Android/Sdk

export NDK_ROOT=$HOME/Android/android-ndk-r13b
export PATH=$PATH:$NDK_ROOT

export GRADLE_HOME=$HOME/Android/gradle-4.1
export PATH=$PATH:$GRADLE_HOME/bin

export ANDROID_TOOLCHAINS_HOME=$HOME/Android/android-toolchains-arm
export PATH=$PATH:$ANDROID_TOOLCHAINS_HOME/bin

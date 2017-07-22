#!/bin/bash - 
#===============================================================================
#
#          FILE: install.sh
# 
#         USAGE: ./install.sh 
# 
#   DESCRIPTION: dotfile安装脚本
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Zhang Fan(张帆), 
#  ORGANIZATION: CVTE
#       CREATED: 2017年07月18日 17时57分31秒
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# 创建文件软连接
ln -s ~ ~/dotfiles/.zshrc
ln -s ~ ~/dotfiles/.zsh
ln -s ~ ~/dotfiles/.tmux.conf
ln -s ~ ~/dotfiles/.vimrc
ln -s ~ ~/dotfiles/.vim
ln -s ~ ~/dotfiles/.agignore
ln -s ~ ~/dotfiles/.aria2
ln -s ~ ~/dotfiles/.gitconfig

# 安装基础插件
echo "安装tmux插件管理器tpm” &&
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm &&
echo "使用 Prefix+I安装插件" && sleep 5

echo "安装vim插件管理器vim-plug" &&
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\n    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&
echo "进入vim安装插件, ./install.py --clang-completer 安装YCM" && sleep 5 

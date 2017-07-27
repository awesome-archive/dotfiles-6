" ++++++++++++++++++++++++++++++++++++++++
" +         name: .vimrc                 +
" +         author: steven guo           +
" +         last update: 2016-03-20      +
" +                                      +
" +         author: 张帆(Zix)            +
" +         last update: 2017-04-08      +
" ++++++++++++++++++++++++++++++++++++++++

source ~/.vim/pluginconfig/vimcommon.vim

" ++++++++++++++++++++++++++++++++++++++++
" +             常用插件安装             +
" ++++++++++++++++++++++++++++++++++++++++

" enable matchit
runtime macro/matchit.vim

call plug#begin('~/.vim/plugged')

" 主题
Plug 'altercation/vim-colors-solarized'
" Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace' " 显示空格 :FixWhitespace
Plug 'kshenoy/vim-signature'    " 右侧显示标记

" tmux集成
Plug 'edkolev/tmuxline.vim' " 将tmux状态栏与vim统一
" Plug 'wellle/tmux-complete.vim'
Plug 'christoomey/vim-tmux-navigator' " tmux窗口与vim窗口无缝切换

" 自动补全
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' " 代码块自动补全
Plug 'Valloric/YouCompleteMe'                       " 语义补全，跳转
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'} " 需要先安装clang++
" Plug 'mattn/emmet-vim'    " 指令补全

" parenthes
Plug 'Raimondi/delimitMate' " 符号对自动补全
Plug 'tpope/vim-surround'   " 添/删/改符号对，ds：删除，cs：修改 ys：添加
Plug 'tpope/vim-repeat'     " 使得插件命令可以重复（否则可能只能重复一部分）

" project manager
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'majutsushi/tagbar' "需安装ctags-exuberant，显示代码结构信息
Plug 'ctrlpvim/ctrlp.vim' | Plug 'tacahiroy/ctrlp-funky' "文件/函数查找
Plug 'dyng/ctrlsf.vim'
" Plug 'terryma/vim-multiple-cursors'
Plug 'mileszs/ack.vim'
" "Plug 'xolox/vim-misc' | Plug 'xolox/vim-easytags'
" Plug 'craigemery/vim-autotag'
" Plug 'fholgado/minibufexpl.vim'
"
" " commenter
" Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/DoxygenToolkit.vim'

" " cpp dev
" Plug 'derekwyatt/vim-fswitch', {'for': ['cpp', 'c']} | Plug 'derekwyatt/vim-protodef'
Plug 'Chiel92/vim-autoformat'
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'rsaraf/vim-advanced-lint'

" python
Plug 'nvie/vim-flake8', {'for': 'python'}

" " git
" Plug 'airblade/vim-gitgutter'
" Plug 'tpope/vim-fugitive'
"
" " for indent
Plug 'godlygeek/tabular'
"
" for markdown
Plug 'plasticboy/vim-markdown'          " 高亮
Plug 'iamcco/markdown-preview.vim'      " 预览

" for shell script
Plug 'WolfgangMehner/bash-support'      " 设置面板打开方式为,ntw

" " todo list
" Plug 'freitass/todo.txt-vim'
"
" " text-object
" Plug 'kana/vim-textobj-user' | Plug 'kana/vim-textobj-entire'
" Plug 'lucapette/vim-textobj-underscore', {'for': ['python', 'cpp', 'c']}
" Plug 'kana/vim-textobj-line'
" Plug 'kana/vim-textobj-indent', {'for': 'python'}
" Plug 'kana/vim-textobj-function'
" Plug 'terryma/vim-expand-region'
"
" " other
" Plug 'tpope/vim-unimpaired'
" Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-dispatch' "在quickfix中执行命令
" Plug 'tpope/vim-endwise'
Plug 'zhaohuaxishi/ctrlp-header'
" Plug 'zhaohuaxishi/vim-ctrlp-cmdpalette'
" Plug 'zhaohuaxishi/auto-header'
" Plug 'mhinz/vim-startify'
" Plug 'vim-scripts/tpp.vim'
Plug 'vim-scripts/fcitx.vim'

" Add plugins to &runtimepath
call plug#end()

" Put your non-Plugin stuff after this line

" +++++++++++++++++++++++++++++++++++++++
" +              插件配置               +
" +++++++++++++++++++++++++++++++++++++++

source ~/.vim/pluginconfig/ack.vim
" source ~/.vim/pluginconfig/acsnum.vim
source ~/.vim/pluginconfig/airline.vim
source ~/.vim/pluginconfig/autoformat.vim
" source ~/.vim/pluginconfig/colorscheme.vim
source ~/.vim/pluginconfig/ctrlp.vim
source ~/.vim/pluginconfig/ctrlsf.vim
source ~/.vim/pluginconfig/doxygentoolkit.vim
source ~/.vim/pluginconfig/flake8.vim
" source ~/.vim/pluginconfig/fugitive.vim
" source ~/.vim/pluginconfig/nerdcommenter.vim
source ~/.vim/pluginconfig/nerdtree.vim
source ~/.vim/pluginconfig/tagbar.vim
source ~/.vim/pluginconfig/tmuxline.vim
source ~/.vim/pluginconfig/ultisnips.vim
" source ~/.vim/pluginconfig/visual-star.vim
source ~/.vim/pluginconfig/youcompleteme.vim
" source ~/.vim/pluginconfig/vim-autotag.vim
" source ~/.vim/pluginconfig/vim-note.vim
" source ~/.vim/pluginconfig/cpplint.vim
" source ~/.vim/pluginconfig/fswitch.vim
source ~/.vim/pluginconfig/bash-support.vim

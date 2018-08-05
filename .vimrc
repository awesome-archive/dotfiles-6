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

if empty(glob('~/.vim/autoload/plug.vim'))
    silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" 主题
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace' " 显示空格 :FixWhitespace
Plug 'kshenoy/vim-signature'    " 右侧显示标记

" tmux集成
Plug 'edkolev/tmuxline.vim' " 将tmux状态栏与vim统一
Plug 'christoomey/vim-tmux-navigator' " tmux窗口与vim窗口无缝切换

" 自动补全
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' " 代码块自动补全
Plug 'Valloric/YouCompleteMe'                       " 语义补全，跳转
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'} " 需要先安装clang++

" parenthes
Plug 'Raimondi/delimitMate' " 符号对自动补全
Plug 'tpope/vim-surround'   " 添/删/改符号对，ds：删除，cs：修改 ys：添加
Plug 'tpope/vim-repeat'     " 使得插件命令可以重复（否则可能只能重复一部分）

" project manager
Plug 'octref/RootIgnore' " 读取.gitignore 作为wildignore
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-scripts/vim-nerdtree_plugin_open'
Plug 'majutsushi/tagbar' "需安装universal ctags，显示代码结构信息
Plug 'ctrlpvim/ctrlp.vim' | Plug 'tacahiroy/ctrlp-funky' "文件/函数查找
Plug 'dyng/ctrlsf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mileszs/ack.vim'

" commenter
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/DoxygenToolkit.vim'

" cpp dev
Plug 'derekwyatt/vim-fswitch', {'for': ['cpp', 'c']}
Plug 'Chiel92/vim-autoformat'
Plug 'ludovicchabant/vim-gutentags'
Plug 'ivalkeen/vim-ctrlp-tjump'
Plug 'rhysd/clever-f.vim'
Plug 'w0rp/ale'
Plug 'Shougo/echodoc.vim'

" syntax hightlight
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'hail2u/vim-css3-syntax', {'for': ['css']}
Plug 'artoj/qmake-syntax-vim', {'for': ['qmake']}

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" for indent
Plug 'junegunn/vim-easy-align'

" for markdown
Plug 'plasticboy/vim-markdown', {'for': ['markdown']} " 高亮
Plug 'iamcco/markdown-preview.vim', {'for': ['markdown']}     " 预览

" undo
"Plug 'sjl/gundo.vim'

" text-object
" ae/ie 全选
Plug 'kana/vim-textobj-user' | Plug 'kana/vim-textobj-entire'
" a_/i_下划线之间
Plug 'lucapette/vim-textobj-underscore', {'for': ['python', 'cpp', 'c']}
" al/il 当前行
Plug 'kana/vim-textobj-line'
" ai/ii 相同缩进块/ aI/iI 相同缩进的行
Plug 'kana/vim-textobj-indent', {'for': 'python'}
" af/if and aF/iF 函数块
Plug 'kana/vim-textobj-function'
Plug 'terryma/vim-expand-region'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'sgur/vim-textobj-parameter'

" other
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'skywind3000/asyncrun.vim' "异步执行命令
Plug 'tpope/vim-endwise'
Plug 'zhaohuaxishi/vim-ctrlp-cmdpalette'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/fcitx.vim'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-smooth-scroll'
Plug 'ianva/vim-youdao-translater'
Plug 'vim-scripts/VisIncr'
Plug 'xyz1001/WebSearch.vim'

" uml
"Plug 'scrooloose/vim-slumlord'
"Plug 'aklt/plantuml-syntax'

" icons
Plug 'ryanoasis/vim-devicons'

" Add plugins to &runtimepath
call plug#end()

" Put your non-Plugin stuff after this line

" +++++++++++++++++++++++++++++++++++++++
" +              插件配置               +
" +++++++++++++++++++++++++++++++++++++++

source ~/.vim/pluginconfig/ack.vim
source ~/.vim/pluginconfig/airline.vim
source ~/.vim/pluginconfig/colorscheme.vim
source ~/.vim/pluginconfig/ctrlp.vim
source ~/.vim/pluginconfig/ctrlsf.vim
source ~/.vim/pluginconfig/doxygentoolkit.vim
source ~/.vim/pluginconfig/fugitive.vim
source ~/.vim/pluginconfig/nerdtree.vim
source ~/.vim/pluginconfig/tagbar.vim
source ~/.vim/pluginconfig/tmuxline.vim
source ~/.vim/pluginconfig/ultisnips.vim
source ~/.vim/pluginconfig/visual-star.vim
source ~/.vim/pluginconfig/youcompleteme.vim
source ~/.vim/pluginconfig/fswitch.vim
source ~/.vim/pluginconfig/cpp-enhanced-highlight.vim
"source ~/.vim/pluginconfig/gundo.vim
source ~/.vim/pluginconfig/markdown.vim
source ~/.vim/pluginconfig/vim-gutentags.vim
source ~/.vim/pluginconfig/easymotion.vim
source ~/.vim/pluginconfig/nerdcommenter.vim
source ~/.vim/pluginconfig/rootignore.vim
source ~/.vim/pluginconfig/vim-autoformat.vim
source ~/.vim/pluginconfig/vim-easy-align.vim
source ~/.vim/pluginconfig/vim-smooth-scroll.vim
source ~/.vim/pluginconfig/ale.vim
source ~/.vim/pluginconfig/youdao-translater.vim
source ~/.vim/pluginconfig/asyncrun.vim
source ~/.vim/pluginconfig/echodoc.vim

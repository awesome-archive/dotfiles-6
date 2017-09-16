let g:vim_tags_use_vim_dispatch = 0
let g:vim_tags_ignore_files = ['.gitignore', '.svnignore', '.cvsignore', '.tagignore']
" 修复偶发的该变量无法被扩展为$HOME导致生成.vt_location报错
let g:vim_tags_cache_dir = expand($HOME)

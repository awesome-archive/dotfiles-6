autocmd BufWritePre * undojoin | Neoformat
let g:neoformat_cmake_cmakeformat = {
            \ 'exe': 'cmake-format',
            \ 'args': ['-c ~/.cmake-format.yaml'],
            \ }
let g:neoformat_enabled_cpp=['clangformat']

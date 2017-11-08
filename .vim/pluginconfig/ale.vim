"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"设置标识符号
let g:ale_sign_error = "✖"
let g:ale_sign_warning = "➠"
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"普通模式下，Ctrl-j前往上一个错误或警告，Ctrl-k前往下一个错误或警告
nmap <C-j> <Plug>(ale_previous_wrap)
nmap <C-k> <Plug>(ale_next_wrap)
let g:ale_linters = {'c': ['cpplint']}
let g:ale_linters = {'cpp': ['cpplint']}
let g:ale_cpp_cpplint_options = '--filter=-whitespace/indent,-build/c++11,-build/include'
"let g:ale_cpp_cppcheck_options = '--enable=style,warning,performance,portability --std=c++11 --verbose'

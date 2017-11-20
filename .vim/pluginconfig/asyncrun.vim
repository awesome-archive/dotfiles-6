command! -nargs=? Cmake cclose|copen|AsyncRun -cwd=<root>/build cmake ../<args>
command! -nargs=? Qmake cclose|copen|AsyncRun -cwd=<root>/build qmake ../<args>
command! -nargs=? Make cclose|copen|AsyncRun -cwd=<root>/build make <args>
command! -nargs=? Gitpush cclose|copen|AsyncRun git push <args>
command! -nargs=1 Run cclose|copen|AsyncRun -cwd=<root> ! <root>/build/<args>
nnoremap <Leader>b :Make<cr>
nnoremap <Leader>gp :Gitpush<CR>

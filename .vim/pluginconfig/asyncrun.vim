command! -nargs=? Cmake copen|AsyncRun -cwd=<root>/build cmake ../<args>
command! -nargs=? Qmake copen|AsyncRun -cwd=<root>/build qmake ../<args>
command! -nargs=? Make copen|AsyncRun -cwd=<root>/build make <args>
command! -nargs=1 Run copen|AsyncRun -cwd=<root> ! <root>/build/<args>
nnoremap <Leader>b :Make<cr>

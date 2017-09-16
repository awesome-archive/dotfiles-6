" vim-fswitch "
"""""""""""""""

au! BufEnter *.cc let b:fswitchdst = 'hpp,h'
au! BufEnter *.h let b:fswitchdst = 'cpp,cc'

nmap <silent> <Leader>s :FSHere<cr>

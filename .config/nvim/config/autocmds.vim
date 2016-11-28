autocmd! BufWritePost init.vim source %
autocmd BufWritePre * :let filename=split(bufname("%"), '\.')[0] 
"autocmd BufEnter * silent! lcd %:p:h
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.txt set filetype=markdown
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd! BufWritePost * Neomake

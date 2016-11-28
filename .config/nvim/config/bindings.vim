" Fzf mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
"
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Easier splits
" <c-h> issue
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

let mapleader=','
inoremap jj <ESC>
noremap ; :
noremap : ;
map - <C-W><
map + <C-W>>
noremap <Space> zA
noremap <silent> <leader>z :FZF ~/<CR>
noremap <silent> <leader>v :vsplit $MYVIMRC<CR>
noremap <silent> <leader>n :NERDTreeToggle<CR>

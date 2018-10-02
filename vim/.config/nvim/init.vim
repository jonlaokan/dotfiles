call plug#begin('~/.config/nvim/autoload')
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'
Plug 'lifepillar/vim-mucomplete'
Plug 'davidhalter/jedi-vim'
Plug 'Rip-Rip/clang_complete'
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }
filetype plugin indent on
syntax enable
set termguicolors
set background=dark
let g:gruvbox_italic=1
colo gruvbox
set foldmethod=syntax
set noshowmode
set cmdheight=2
set number
set encoding=utf-8
set hidden
set clipboard=unnamed
set undodir=~/.config/nvim/temp/undodir
set noswapfile
set shiftwidth=4

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

let g:clang_library_path='/usr/lib64/libclang.so.6.0'



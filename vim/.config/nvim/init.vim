call plug#begin('~/.config/nvim/autoload')
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'
Plug 'lifepillar/vim-mucomplete'
Plug 'davidhalter/jedi-vim'
call plug#end()

filetype plugin indent on
syntax enable
let g:airline_powerline_fonts = 1
colo nord
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




call plug#begin('~/.config/nvim/autoload')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'neomake/neomake'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install -all'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'benmills/vimux'
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-obsession'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/echodoc.vim'
Plug 'Rip-Rip/clang_complete'
Plug 'carlitux/deoplete-ternjs'
Plug 'wellle/tmux-complete.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jacoborus/tender.vim'
Plug 'freeo/vim-kalisi'
Plug 'tomasr/molokai'
Plug 'suan/vim-instant-markdown'
call plug#end()

filetype plugin indent on
syntax enable
let g:airline_powerline_fonts = 1
let g:airline_theme='zenburn'
let g:echodoc_enable_at_startup = 1
colorscheme seoul256
set background=dark
set foldmethod=syntax
set noshowmode
set cmdheight=2
set number
set relativenumber
set hidden
set clipboard=unnamed
set undodir=~/.config/nvim/temp/undodir
set noswapfile
set shiftwidth=4
set omnifunc=syntaxcomplete#Complete
set completeopt-=preview

" clang configuration
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_omnicppcomplete_compliance = 0
let g:clang_make_default_keymappings = 0
let g:clang_use_library = 1

" Deoplete configuration
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {}
let g:deoplete#sources._ = {}
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['around']
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.java = '[^. *\t]\.\w*'


source ~/.config/nvim/config/bindings.vim
source ~/.config/nvim/config/autocmds.vim




set nocompatible               " be iMproved
filetype off                   " required!

" Set leader
let mapleader=","

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'epmatsw/ag.vim'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim'

call plug#end()

syntax on
syntax enable
set t_Co=256

" General Config
" set encoding=utf-8
set mouse=a
set ttyfast

set splitright
set splitbelow

" Turn Off Swap Files
set noswapfile
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

set list listchars=tab:»·,trail:·,nbsp:·
set nowrap
set linebreak

" Search
set wildmenu
set showmatch
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR> " remove highlights on ,<space>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

" Silver Seacher
nnoremap <leader>a :Ag

if executable('ag')
  let &grepprg = 'ag --nogroup --nocolor --column'
else
  let &grepprg = 'grep -rn $* *'
endif

" Color
syntax on
colorscheme dracula

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

" Set Numbers
set number
set numberwidth=5

" Reevaluate current file - useful for editing .vimrc
nnoremap <leader>r :so %<CR>

" NERDTree
function! ShowFileInNERDTree()
  if exists("t:NERDTreeBufName")
    NERDTreeFind
  else
    NERDTree
    wincmd l
    NERDTreeFind
  endif
endfunction
map <leader>f :call ShowFileInNERDTree()<cr>

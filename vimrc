set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'atelierbram/vim-colors_duotones'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'epmatsw/ag.vim'
Plug 'tpope/vim-commentary'

call plug#end()

syntax on
syntax enable
set t_Co=256

" General Config
" ==============

set encoding=utf-8

" Enable mouse use in all modes
set mouse=a

" Turn Off Swap Files
" ===================

set noswapfile
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

filetype plugin on
filetype indent on

set list listchars=tab:\ \ ,trail:·   " Display tabs and trailing spaces visually
set nowrap                            " Don't wrap lines
set linebreak                         " Wrap lines at convenient points

" Color
" =====

"syntax enable
"set background=dark
"colorscheme duotone-dark

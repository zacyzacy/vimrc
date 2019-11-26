"""""""""""""""Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

"Non Windows:
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Windows:
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
Plugin 'VundleVim/Vundle.vim'
"Custom Plugins
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
"End Custom Plugin
call vundle#end()            " required
filetype plugin indent on    " required
"""""""""""""""End Vundle
"Font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
"Customizations
colo desert
scriptencoding utf-8
set encoding=utf-8
syntax enable
set nobackup
set noundofile
set number
set cursorline
set wildmenu
set showmatch
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

"Bindings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <C-n> :NERDTreeToggle<CR>

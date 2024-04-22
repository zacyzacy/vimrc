filetype plugin indent on
set nocompatible 
"call plug#begin('~/.vim/plugged')
"Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/syntastic'
"Plug 'vim-airline/vim-airline'
"call plug#end()

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
syntax enable
set encoding=utf-8
set backspace=indent,eol,start
set nobackup
set noundofile
set cursorline
set number relativenumber
set wildmenu
set showmatch
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

"Bindings
noremap <C-n> :NERDTreeToggle<CR>
noremap <C-z> u<CR>
vmap <leader>c "+y
nmap <leader>c "+yy
vmap <leader>y "+y
nmap <leader>y "+yy 
map <C-v> "+p
imap <C-v> <esc>"+p

set encoding=utf-8
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes


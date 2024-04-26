" Customizations
filetype plugin indent on
set nocompatible 
colo desert
scriptencoding utf-8
syntax enable
set encoding=utf-8
set backspace=indent,eol,start
set cursorline
set number relativenumber
set showmatch
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set encoding=utf-8
" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
set noundofile
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
" :find into subdierctories
set path+=**
set wildmenu

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

" Bindings=
noremap <C-n> :NERDTreeToggle<CR>
" CTRL Z Undo
noremap <C-z> u<CR>
" Better (subjective) copy paste
vmap <leader>c "+y
nmap <leader>c "+yy
vmap <leader>y "+y
nmap <leader>y "+yy 
map <C-v> "+p
imap <C-v> <esc>"+p
" jk to return to normal mode
imap jk <esc>
imap kj <esc>
" Leader / to enter find/replace mode real quick
nmap <leader>/ :%s/

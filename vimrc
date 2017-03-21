set nocompatible              " be iMproved

" Setup vundle
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" All of your Plugins must be added before the following line
Plugin 'gmarik/vundle'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level
" move vertically by visual line
nnoremap j gj
nnoremap k gk
let mapleader=","       " leader is comma
" jk is escape
inoremap jk <esc>
set cpo+=J              " Expect sentences to start with 2 spaces
syntax enable           " Turn on syntax highlighting

" HTML settings
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags    " enable autocomplete

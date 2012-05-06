"call pathogen#infect()
set nocompatible  " We don't want vi compatibility.

filetype off

set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

" let Vundle manage Vundle
" required!
  Bundle 'gmarik/vundle'
  Bundle 'L9'
  Bundle 'FuzzyFinder'
  Bundle 'SuperTab'
  Bundle 'vim-ruby/vim-ruby'
  Bundle 'scrooloose/nerdtree'
  Bundle 'tpope/vim-rails.git'
  Bundle 'tpope/vim-haml.git'
  Bundle 'tpope/vim-markdown.git'
  Bundle 'tpope/vim-endwise.git'
  " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

filetype plugin indent on

set mouse=a
"set spell
"gvim
if has("gui_mac") || has("gui_macvim") || has('gui_running')
" Command-T for CommandT
  "macmenu &File.New\ Tab key=<D-T>
  map <D-t> :tabnew<cr>
  map <D-R> :CommandT<CR>
  map <D-R> <Esc>:CommandT<CR>
  set guifont=Monaco:h14
  set guioptions-=T
endif

"editor
syntax on
set modeline
set encoding=utf-8
set iskeyword-=_ " allow underscore to delimit words"
set nowrap

"tabs and indents
set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2

"display
set cursorline
colorscheme molokai
let g:molokai_original = 0
set incsearch
set number
"set ruler
set showcmd
set showmode
autocmd BufNewFile,BufRead * set list listchars=tab:▸\
set list listchars=tab:\|_,trail:. "draw tabs & trailing spaces
set showmatch

"files
autocmd BufLeave,FocusLost silent! wall "save on lost focus
set autowrite
set noswapfile
set nobackup
autocmd BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif " Remove trailing whitespace

"searching
set ignorecase
set smartcase
set hlsearch

"keys

" Bubble lines
nnoremap <C-j> :m+<cr>==
nnoremap <C-k> :m-2<cr>==
inoremap <C-j> <Esc>:m+<cr>==gi
inoremap <C-k> <Esc>:m-2<cr>==gi
vnoremap <C-j> :m'>+<cr>gv=gv
vnoremap <C-k> :m-2<cr>gv=gv


nmap <C-f> :FufFile<cr>
" ctrl+f to FuzzyFinder (recursive)
nmap <C-f> :FufFile<cr>

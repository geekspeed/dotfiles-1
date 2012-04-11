"call pathogen#infect()

filetype plugin indent on
set nocompatible  " We don't want vi compatibility.
set mouse=a
"set spell
"gvim
if has("gui_mac") || has("gui_macvim")
" Command-T for CommandT
  "macmenu &File.New\ Tab key=<D-T>
  map <D-t> :tabnew<cr>
  map <D-R> :CommandT<CR>
  Rmap <D-R> <Esc>:CommandT<CR>
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
color molokai
set cursorline
set incsearch
set number
set ruler
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

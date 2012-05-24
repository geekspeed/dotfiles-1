set nocompatible  " We don't want vi compatibility.
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'mileszs/ack.vim'
Bundle 'FuzzyFinder'
Bundle 'SuperTab'
Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-haml.git'
Bundle 'tpope/vim-markdown.git'
Bundle 'tpope/vim-endwise.git'
"Bundle 'wincent/Command-T'
Bundle 'kien/ctrlp.vim.git'

command! BI BundleInstall
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

filetype plugin indent on

set mouse=a

"spell checker
"set spell
"set spelllang=en_us
"set mousemodel=popup
"editor
syntax on
set modeline
set encoding=utf-8
set iskeyword-=_ " allow underscore to delimit words"
set nowrap
set textwidth=0
set wrapmargin=0
set backspace=indent,eol,start
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
set showcmd
set showmode
autocmd BufNewFile,BufRead * set list listchars=tab:▸\
set list listchars=tab:\|_,trail:. "draw tabs & trailing spaces
set showmatch

"files
autocmd BufLeave,FocusLost silent! wall "save on lost focus
set autowrite
set noswapfile
autocmd BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif " Remove trailing whitespace

"backup
set backupdir=~/tmp,/tmp

"searching
set ignorecase
set smartcase
set hlsearch

"ctrlp file searching
set wildignore=.git,.svn,*.o,*.obj,*.rbc,*.class,*.ico,*.png,*.jpeg,*.jpg,*.gif,*.ttf,*.pdf,*.ttf,*.EOT,*.ttf,*.svg,*.woff
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

"status line
set laststatus=2
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [FORMAT=%{&ff}]\ [%{strlen(&fenc)?&fenc:'none'}]\ [COL=%03v][%p%%]\ [LEN=%L]

"keys

"NERDTree
map <C-e> :NERDTree

"change tabs
map <C-h> :tabprev<cr>
map <C-l> :tabnext<cr>

" Bubble lines
nnoremap <C-j> :m+<cr>==
nnoremap <C-k> :m-2<cr>==
inoremap <C-j> <Esc>:m+<cr>==gi
inoremap <C-k> <Esc>:m-2<cr>==gi
vnoremap <C-j> :m'>+<cr>gv=gv
vnoremap <C-k> :m-2<cr>gv=gv

nmap <C-f> :FufFile<cr>
nmap <leader>a :Ack
nmap <F7> :Ack -w <c-r><c-w><cr>


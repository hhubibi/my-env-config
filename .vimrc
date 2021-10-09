let mapleader=" "
syntax on
set number
set cursorline
set wrap
set showcmd
set wildmenu

set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
set mouse=a
let &t_ut=''
set expandtab
set autoindent
set tabstop=8
set shiftwidth=8
set softtabstop=8
set list
set listchars=tab:▸\ ,trail:▫

map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map tu :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

noremap K 5k
noremap J 5j
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'preservim/nerdtree'
"Plug 'ycm-core/YouCompleteMe'
call plug#end()

"syntax enable
"set background=dark
"let g:solarized_termcolors=16
"let g:solarized_termtrans=1
"color solarized

"set cindent
"set history=1000

"set clipboard=unnamed

vmap "+y :w !pbcopy<CR><CR>
nmap "+p :r !pbpaste<CR><CR>

vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" ==
" == NERDTree
" ==
map tt :NERDTreeToggle<CR>

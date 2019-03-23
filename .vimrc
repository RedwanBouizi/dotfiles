set backspace=indent,eol,start

set wildignore+=*.so,*.swp,*.zip,*.pyc
set wildmenu
set showcmd

set ts=4
set sw=4
set sts=4
set expandtab
set autoindent
set smartindent
set fileformat=unix

set number
set cursorline

set history=1000
set undolevels=1000

set showmatch
set hlsearch
set smartcase
map <leader>h :set hlsearch!<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

set foldmethod=syntax
set foldlevel=99

nnoremap <C-c> :tabnew<CR>
nnoremap <C-x> :tabclose<CR>
nnoremap <C-m> :tabnext<CR>
nnoremap <C-n> :tabprevious<CR>

nnoremap k gk
nnoremap j gj

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

call plug#begin('~/.vim/plugged')
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'altercation/vim-colors-solarized'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'nanotech/jellybeans.vim'
call plug#end()
filetype plugin indent on
syntax on

set background=dark
colorscheme jellybeans

let g:airline_theme='dark'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

nnoremap <F1> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=30

set nocompatible

set encoding=utf-8
set fenc=utf-8
set termencoding=utf-8
set backspace=indent,eol,start

set wildignore+=*.so,*.swp,*.zip,*.pyc
set wildmenu
set showcmd

set ruler
set colorcolumn=80
set cursorline

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set fileformat=unix

set history=1000
set undolevels=1000

set showmatch
set hlsearch
set smartcase
map <leader>h :set hlsearch!<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

syntax on
set background=dark
colorscheme solarized

set foldmethod=indent
set foldlevel=99
nnoremap <space> za

nnoremap <C-c> :tabnew<CR>
nnoremap <C-x> :tabclose<CR>
nnoremap <C-m> :tabnext<CR>
nnoremap <C-n> :tabprevious<CR>

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

call plug#begin('~/.vim/plugged')
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'vim-python/python-syntax'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'bling/vim-airline'
    Plug 'scrooloose/syntastic'
    Plug 'scrooloose/nerdtree'
    Plug 'ddollar/nerdcommenter'
    Plug 'tpope/vim-fugitive'
call plug#end()
filetype plugin indent on

" Vim better whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" Python syntax highlighting
let g:python_highlight_all=1

" C++ syntax highlighting
let g:cpp_member_variable_highlight=1

" Airline
let g:airline_theme="dark"
let g:airline_regular_fonts=1
let g:airline#extensions#tabline#enabled=1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_python_checkers=['pylint']
let g:syntastic_quiet_messages={'level': 'warnings'}
let g:syntastic_mode_map={'mode': 'passive'}
let g:syntastic_cpp_checkers=['gcc']
let g:syntastic_cpp_compiler='gcc'
let g:syntastic_cpp_compiler_options='-std=c++11'

" NERDTree
nnoremap <F1> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=30

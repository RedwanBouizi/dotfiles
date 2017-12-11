" Vi-free
set nocompatible

" encoding
set encoding=utf-8
set fenc=utf-8
set termencoding=utf-8

" allow backspace in insert mode
set backspace=indent,eol,start

" command-line completion
set wildmenu
set showcmd

" buffers
set hidden

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" display metrics
set ruler

" matching braces
set showmatch

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase
map <leader>h :set hlsearch!<CR>

" editing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab     
set autoindent
set smartindent
set fileformat=unix
set textwidth=80

set history=1000
set undolevels=1000

" theme and colors
syntax on
set background=dark
colorscheme jellybeans

" cursor
set cursorline

" enable folding with space key
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Tabs
nnoremap <C-c> :tabnew<CR>
nnoremap <C-x> :tabclose<CR>
nnoremap <C-m> :tabnext<CR>
nnoremap <C-n> :tabprevious<CR>

" move over multiple windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"""""""" Plugins """"""""

" plugins manager
call plug#begin('~/.vim/plugged')
    Plug 'edkolev/tmuxline.vim'
    Plug 'bling/vim-airline'
    Plug 'kien/ctrlp.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'majutsushi/tagbar'
    Plug 'tpope/vim-surround'
    Plug 'ddollar/nerdcommenter'
    Plug 'valloric/youcompleteme'
    Plug 'scrooloose/syntastic'
    Plug 'Vimjas/vim-python-pep8-indent'
    Plug 'vim-python/python-syntax'
    Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()
filetype plugin indent on

" Python syntax highlighting
let g:python_highlight_all=1

" C++ syntax highlighting
let g:cpp_member_variable_highlight=1
let g:cpp_class_scope_highlight=1
let g:cpp_class_decl_highlight=1
let g:cpp_experimental_template_highlight=1

" Airline
let g:airline_theme="dark"
let g:airline_regular_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:tmuxline_powerline_separators=0

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0
let g:syntastic_python_checkers=['pylint']

" NERDTree
nnoremap <F1> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']
let g:NERDTreeWinSize=40

" Tagbar
nnoremap <F2> :TagbarToggle<CR>
let g:tagbar_width=40

" Pasting without autoindenting
set pastetoggle=<F3>

" Custom search
nnoremap <F4> :execute " grep -srnw --binary-files=without-match --exclude-dir=.git --exclude=tags . -e " . expand("<cword>") . " " <bar> cwindow<CR>

" YouCompleteMe
" compile_commands.json used, add -DCMAKE_EXPORT_COMPILE_COMMANDS=ON when calling cmake
let g:ycm_python_binary_path='python'
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1 
nnoremap <F5> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F6> :YcmCompleter GoToReferences<CR>

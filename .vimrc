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

" searching
set hlsearch
set ignorecase
set smartcase

" highlighting on/off when searching
map <leader>h :set hlsearch!<CR>

" tab indent
set tabstop=4
set autoindent

" display metrics
set ruler

" matching braces
set showmatch

" file format
set fileformat=unix

" theme and colors
syntax enable 
set background=dark
colorscheme solarized

" cursor
set cursorline
hi CursorLine guibg=DarkGrey

" enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Tabs
nnoremap <C-n> :tabnew<CR>
nnoremap <C-p> :tabnext<CR>
nnoremap <C-x> :tabclose<CR>

" move over multiple windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"""""""" Plugins """"""""

" plugins manager
call pathogen#infect()
call pathogen#helptags()
filetype plugin on

" Airline
let g:airline_theme="dark"
let g:airline_regular_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:tmuxline_powerline_separators = 0

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0
let g:syntastic_python_checkers = ['pylint']

" Python - syntax highlighting
let g:python_highlight_all = 1

" YouCompleteMe
let g:ycm_python_binary_path = 'python'
" compile_commands.json used, add -DCMAKE_EXPORT_COMPILE_COMMANDS=ON when calling cmake
"let g:ycm_global_ycm_extra_conf=$HOME."/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_autoclose_preview_window_after_completion=1

" NERDTree
nnoremap <F1> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=40

" Tagbar
nnoremap <F2> :TagbarToggle<CR>
let g:tagbar_width=40

" Vi-free
set nocompatible

" encoding
set encoding=utf-8
set fenc=utf-8
set termencoding=utf-8

" allow backspace in insert mode
set backspace=indent,eol,start

" this makes vim act like all other editors, buffers can
" exist in the background without being in a window.
set hidden

" command-line completion
set wildmenu
set showcmd

" searching
set hlsearch
set ignorecase
set smartcase

" indent
set tabstop=4

" display metrics
set relativenumber
set ruler

set showmatch
set fileformat=unix

set mouse=a

" copy and paste from clipboard
set clipboard=unnamed

" plugins manager
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" theme and colors
syntax enable 
set background=dark
colorscheme solarized

" column number 100 with color
set colorcolumn=100
hi ColorColumn ctermbg=DarkGrey

" cursor
set cursorline
hi CursorLine guibg=DarkGrey

" move over multiple windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" highlighting on/off when searching
map <leader>h :set hlsearch!<CR>

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
let g:syntastic_quiet_messages={'level': 'errors'}

" YouCompleteMe
let g:ycm_python_binary_path = 'python'
" compile_commands.json used, add -DCMAKE_EXPORT_COMPILE_COMMANDS=ON when
" calling cmake
"let g:ycm_global_ycm_extra_conf=$HOME."/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_autoclose_preview_window_after_completion=1

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" NERDTree
nnoremap <F1> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20

" Tagbar
nnoremap <F2> :TagbarToggle<CR>
let g:tagbar_width=35

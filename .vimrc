"""""""""""""""""""""""""""""""" Basic Config """""""""""""""""""""""""""""""""

" Vi-free
set nocompatible

" Encoding
set encoding=utf-8
set fenc=utf-8
set termencoding=utf-8

" Allow backspace in insert mode
set backspace=indent,eol,start

" Ext ignored
set wildignore+=*.so,*.swp,*.zip,*.pyc

" Command-line completion
set wildmenu
set showcmd

" Copy and paste from multiple soucres
set clipboard=unnamed

" Buffers
set hidden

" Display metrics
set ruler
set tw=80
set colorcolumn=80
set cursorline

" Matching braces
set showmatch

" Searching
set hlsearch
set smartcase
map <leader>h :set hlsearch!<CR>

" Editing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab     
set autoindent
set smartindent
set fileformat=unix

" Historic
set history=1000
set undolevels=1000

" Theme and colors
syntax on
set background=dark
colorscheme solarized

" Enable folding with space key
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Tabs
nnoremap <C-c> :tabnew<CR>
nnoremap <C-x> :tabclose<CR>
nnoremap <C-m> :tabnext<CR>
nnoremap <C-n> :tabprevious<CR>

" Split location
set splitbelow
set splitright

" Move over multiple windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


""""""""""""""""""""""""""""""""""" Plugins """""""""""""""""""""""""""""""""""

" Plugins manager
call plug#begin('~/.vim/plugged')
    Plug 'vim-python/python-syntax'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'edkolev/tmuxline.vim'
    Plug 'bling/vim-airline'
    Plug 'kien/ctrlp.vim'
    Plug 'scrooloose/syntastic'
    Plug 'scrooloose/nerdtree'
    Plug 'majutsushi/tagbar'
    Plug 'ddollar/nerdcommenter'
    Plug 'valloric/youcompleteme'
    Plug 'tpope/vim-fugitive'
call plug#end()
filetype plugin indent on

" Python syntax highlighting
let g:python_highlight_all=1

" C++ syntax highlighting
let g:cpp_member_variable_highlight=1
let g:cpp_class_scope_highlight=1
let g:cpp_class_decl_highlight=1
let g:cpp_experimental_template_highlight=1

" TmuxLine
let g:tmuxline_powerline_separators=0

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

" NERDTree
nnoremap <F1> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$', 'tags', '\.out$', 'compile_commands.json']
let g:NERDTreeWinSize=30

" Tagbar
nnoremap <F2> :TagbarToggle<CR>
let g:tagbar_width=30

" YouCompleteMe
" NOTE: you must add -DCMAKE_EXPORT_COMPILE_COMMANDS=ON when calling cmake,
" generated compile_commands.json tells YCM how to compile your C/C++ project
let g:ycm_python_binary_path='python'
let g:ycm_autoclose_preview_window_after_insertion=0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1 
nnoremap <F5> :YcmCompleter GoTo<CR>
highlight Pmenu ctermfg=white ctermbg=black


""""""""""""""""""""""""""""""" Ctags & Cscope """"""""""""""""""""""""""""""""

" Ctags
nnoremap <F3> :! ctags -R --fields=+l .<CR><CR>

" Cscope
nnoremap <F4> :! cscope -Rb<CR><CR>

" Use both Cscope and Ctags for 'ctrl-]', ':ta', and 'vim -t'
set cscopetag

" Check cscope for definition of a symbol before checking ctags: set to 1
" if you want the reverse search order.
set csto=0

" Add any cscope database in current directory
if filereadable("cscope.out")
    cscope add cscope.out  
endif

" Show msg when any other cscope db added
set cscopeverbose  

"   's'   symbol: find all references to the C symbol under cursor
"   'g'   global: find global definition(s) of the token under cursor
"   'c'   calls:  find all calls to the function name under cursor
"   'd'   called: find functions that function under cursor calls
"   't'   text:   find all instances of the text under cursor
"   'e'   egrep:  egrep search for the word under cursor
"   'f'   file:   open the filename under cursor
"   'i'   includes: find files that include the filename under cursor

nnoremap <C-\>s :scscope find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>g :scscope find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>c :scscope find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>d :scscope find d <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>t :scscope find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>e :scscope find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>f :scscope find f <C-R>=expand("<cfile>")<CR><CR>	
nnoremap <C-\>i :scscope find i ^<C-R>=expand("<cfile>")<CR>$<CR>	

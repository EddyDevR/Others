syntax on

if has("autocmd")
   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set background=dark
set number relativenumber
set number
set history=1000
set nobackup
set nowritebackup
set noswapfile
set backspace=indent,eol,start    " backspace everywhere in insert mode
set autoindent " autoindent always ON.
set expandtab " expand tabs
set shiftwidth=2 " spaces for autoindenting
set softtabstop=2 " remove a full pseudo-TAB when i press <BS>
set encoding=utf-8          " always use unicode
set hidden                  " to hide warning when opening files
set ignorecase              " to ignore case in searchs
set scrolloff=8               " Keep at least 8 lines below cursor
set nu rnu  "Hybrid. Relative numbers and the current line number
set splitbelow splitright   " Set the splits to open at the right side and below
set lazyredraw
set ttyfast
set showmatch      " higlight matching parentheses and brackets
set wildmenu       " enable visual wildmenu
set nohlsearch     " clear highlight after a search
autocmd BufRead,BufNewFile *.java setlocal shiftwidth=4 softtabstop=4
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'mattn/emmet-vim'
Plug 'davidhalter/jedi-vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-lua-ftplugin'
call plug#end()


let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key='<C-z>'
let &t_ut=''  " To render properly background of the color scheme
:set omnifunc=phpcomplete#CompletePHP
:set omnifunc=javascriptcomplete#CompleteJS
:set omnifunc=htmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


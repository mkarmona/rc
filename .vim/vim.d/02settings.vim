"settings

set background=light

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

nnoremap <C-c> <nop>
inoremap <C-c> <nop>
nnoremap Q <nop>

let mapleader = ',' " esto es el comando para el map

"set completeopt=menuone,noinsert
set completeopt=menuone
set cul
set wildmenu
set wildmode=list:longest,full
set backspace=indent,eol,start  " more powerful backspacing
set autoindent      " always set autoindenting on
" set linebreak     " Don't wrap words by default
set textwidth=0     " Don't wrap lines by default 
set viminfo='20,\"50    " read/write a .viminfo file, don't store more than
set history=100     " keep 100 lines of command line history
set ruler       " show the cursor position all the time
set tabstop=4
set expandtab
set smarttab
set softtabstop=4
set shiftwidth=4
set shiftround
set showcmd     " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching
set incsearch       " Incremental search
set number " numero de lineas
set hlsearch
set hidden
set mouse=a     " Enable mouse usage (all modes)
set autowrite "automatic writing
set autoread "para que recargue el fichero en caso de cambiar
set laststatus=2
set noshowmode
set timeoutlen=500
set fillchars+=vert:│
"set listchars=extends:$,tab:/.,eol:¬
"set listchars=extends:$,tab:/.,eol:⤶
"set listchars=extends:$,tab:/.,eol:␤
"set listchars=extends:$,tab:/.,eol:↵,nbsp:⎵
"set listchars=extends:$,tab:».,eol:␤,nbsp:⎵
"set listchars=extends:$,tab:».,eol:↵,nbsp:⎵
"set listchars=extends:$,tab:».,eol:¬,nbsp:⎵
set listchars=extends:$,tab:».,eol:¶,nbsp:⎵
"set listchars=extends:$,tab:».,eol:⁋,nbsp:⎵
set list
"set colorcolumn=85,95
" default folding settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
set nobackup
set shortmess+=I
set splitbelow
set splitright
set timeoutlen=1000
"set backupdir=~/.vim/backup.d/

if has('conceal')
    set conceallevel=1
    set concealcursor=cn
endif

if (has("termguicolors"))
  set termguicolors
endif

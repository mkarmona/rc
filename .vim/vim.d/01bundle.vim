call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimfiler.vim'

Plug 'mkarmona/gsl.vim'
Plug 'mkarmona/togglebg.vim'
Plug 'mkarmona/gruvboxal.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
" Plug 'andviro/flake8-vim'
Plug 'justmao945/vim-clang'
Plug 'rhysd/vim-clang-format'
Plug 'davidhalter/jedi-vim'
Plug 'plytophogy/vim-virtualenv'
Plug 'scrooloose/nerdcommenter'
"Plug 'bling/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'rking/ag.vim'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'morhetz/gruvbox'
Plug 'kshenoy/vim-signature'
Plug 'hdima/python-syntax'
Plug 'airblade/vim-gitgutter'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-rooter'
Plug 'roman/golden-ratio'
Plug 'mkarmona/materialbox'
Plug 'mkarmona/colorsbox'
Plug 'sjl/gundo.vim'
Plug 'romainl/flattened'
Plug 'atelierbram/Base2Tone-vim'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kovisoft/paredit'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-fireplace'
Plug 'mhinz/vim-startify'
Plug 'romainl/flattened'
Plug 'dracula/vim'
Plug 'stephpy/vim-yaml'
Plug 'dag/vim-fish'
Plug 'arcticicestudio/nord-vim'

let g:plug_url_format = 'git@github.com:%s.git'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-dispatch'
Plug 'hashivim/vim-terraform'
Plug 'NLKNguyen/papercolor-theme'
Plug 'reedes/vim-colors-pencil'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'sickill/vim-monokai'
Plug 'cespare/vim-toml'
Plug 'cocopon/iceberg.vim'
Plug 'junegunn/seoul256.vim'
Plug 'jnurmine/Zenburn'
Plug 'tbastos/vim-lua'

" Add plugins to &runtimepath
call plug#end()

filetype plugin indent on
syn on " syntax on


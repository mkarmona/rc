call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimfiler.vim'

Plug 'mkarmona/gsl.vim'
Plug 'mkarmona/togglebg.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'majutsushi/tagbar'
Plug 'justmao945/vim-clang'
Plug 'rhysd/vim-clang-format'
Plug 'davidhalter/jedi-vim'
Plug 'plytophogy/vim-virtualenv'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
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
Plug 'sjl/gundo.vim'
Plug 'cocopon/iceberg.vim'
Plug 'jacoborus/tender.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'nanotech/jellybeans.vim'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'kovisoft/paredit'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-fireplace'
Plug 'mhinz/vim-startify'
Plug 'stephpy/vim-yaml'

let g:plug_url_format = 'git@github.com:%s.git'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-dispatch'
Plug 'hashivim/vim-terraform'
Plug 'NLKNguyen/papercolor-theme'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'cespare/vim-toml'
Plug 'tbastos/vim-lua'
Plug 'lifepillar/vim-gruvbox8'
Plug 'arzg/vim-plan9'
Plug 'ziglang/zig.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lifepillar/vim-solarized8'

" Add plugins to &runtimepath
call plug#end()

filetype plugin indent on
syn on " syntax on


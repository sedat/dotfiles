set nocompatible
filetype off

" plugins
call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'pangloss/vim-javascript'
    Plug 'elzr/vim-json'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ayu-theme/ayu-vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'justinmk/vim-sneak'
    Plug 'stephpy/vim-yaml'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'dense-analysis/ale'
    Plug 'mattn/emmet-vim'
    Plug 'Yggdroot/indentLine'
    Plug 'ervandew/supertab'
call plug#end()

" highlight Pmenu ctermbg=gray guibg=black

" color theme
syntax on
set termguicolors
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" general settings
set tabstop=4
set clipboard=unnamedplus
set shiftwidth=4
set t_Co=256
set expandtab
set ai
set number
set hlsearch
set ruler
set hidden
set smarttab
set autoindent
set signcolumn=yes                      " Always show the signcolumn,
set updatetime=300                      " Faster completion
set timeoutlen=100   
set clipboard=unnamedplus
set number
set cursorline
set laststatus=2
set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically reread changed files without asking me anything
set autoindent
set backspace=indent,eol,start  " Makes backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set mouse=a                     "Enable mouse mode

set noerrorbells             " No beeps
set number                   " Show line numbers
set showcmd                  " Show me what I'm typing
set noswapfile               " Don't use swapfile
set nobackup                 " Don't create annoying backup files
set splitright               " Split vertical windows right to the current windows
set splitbelow               " Split horizontal windows below to the current windows
set autowrite                " Automatically save before :next, :make etc.
set hidden
set fileformats=unix,dos,mac " Prefer Unix over Windows over OS 9 formats
set noshowmatch              " Do not show matching brackets by flickering
set noshowmode               " We show the mode with airline or lightline
set ignorecase               " Search case insensitive...
set smartcase                " ... but not it begins with upper case
set completeopt=menu,menuone
set nocursorcolumn           " speed up syntax highlighting
set nocursorline
set updatetime=300
set pumheight=10             " Completion window max size
set conceallevel=2           " Concealed text is completely hidden

set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion

set lazyredraw

" increase max memory to show syntax highlighting for large files
set maxmempattern=20000
highlight Comment ctermfg=green
" plug-config

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" nerdtree
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" sneak
let g:sneak#label = 1
" case insensitive sneak
let g:sneak#use_ic_scs = 1
" immediately move to the next instance of search, if you move the cursor
" sneak is back to default behavior
let g:sneak#s_next = 1
map gs <Plug>Sneak_;
" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

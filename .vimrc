set nocompatible
filetype off

" plugins
call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'tomasr/molokai'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'pangloss/vim-javascript'
    Plug 'elzr/vim-json'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ayu-theme/ayu-vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'justinmk/vim-sneak'
call plug#end()

" highlight Pmenu ctermbg=gray guibg=black

" color theme
syntax on
set termguicolors
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" general settings
set tabstop=2
set shiftwidth=2
set t_Co=256
set mouse=a
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
highlight Comment ctermfg=green


" plug-config

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

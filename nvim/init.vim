call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'luochen1990/rainbow'
Plug 'francoiscabrol/ranger.vim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'justinmk/vim-sneak'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stephpy/vim-yaml'
Plug 'yggdroot/indentline'
Plug 'rust-lang/rust.vim'
call plug#end()
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/coc.vim

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

let mapleader="\<space>"

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" Better split switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nmap <Leader>gj :diffget //3<CR>
nmap <Leader>gf :diffget //2<CR>
nmap <Leader>gs :G<CR>
nmap <Leader>f :FZF<CR>
inoremap jj <Esc>

" Caps
let g:mapleader = ' '
map <C-w> :bnext<CR>
nnoremap <leader>s :w<CR>  " Guardar con <líder> + s
nnoremap <leader>e :e $MYVIMRC<CR>
nnoremap <leader>q :q<CR>
vnoremap <leader>d "+d
nnoremap <leader>d "+d
" recargar el nvim
nnoremap <Leader>i :so ~/.config/nvim/init.vim<CR>
" Usar <líder> + p para pegar desde el portapapeles
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P
" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>l :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

" Cerrar el buffer actual con <líder> + q
nnoremap <leader>w :bdelete<CR>

" Searching
highlight Normal ctermbg=NONE
set title
set clipboard=unnamedplus
set colorcolumn=120
set cursorline
set encoding=utf-8
set expandtab
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set noerrorbells
set noshowmode
set noswapfile
set nowrap
set number
set numberwidth=1
set hidden
set rnu
set ruler
set showcmd
set showmatch
set smartcase
set nobackup
set nowritebackup
set smartindent
set spelllang=en,es
set sw=2
set termguicolors
syntax on
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
  " Theme
  Plug 'sainnhe/gruvbox-material'
  " Syntax
  Plug 'sheerun/vim-polyglot'
  "typing
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  " IDE
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'mhinz/vim-signify'
call plug#end()

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
  let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'z', 'error', 'warning']
      \ ]
"let g:airline_theme='luna'
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
" gruvbox
if has('termguicolors')
  set termguicolors
endif

let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_cursor = 'auto'
" For better performance
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material

set updatetime=300
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

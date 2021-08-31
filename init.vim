syntax enable
set expandtab
set smartcase
set termguicolors
set incsearch
set number relativenumber
set scrolloff=10
set nohlsearch
set hidden
set softtabstop=4
set shiftwidth=4
set sta
set expandtab
set noswapfile
set nowrap

" theme cannot change background color
autocmd ColorScheme * highlight Normal ctermfg=NONE ctermbg=NONE guibg=NONE 

"plugins
call plug#begin('~/.vim/plugged')

" themes
Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'
Plug 'mhartington/oceanic-next'
Plug 'nanotech/jellybeans.vim'
Plug 'sainnhe/sonokai'
Plug 'haishanh/night-owl.vim'
Plug 'franbach/miramare'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'bluz71/vim-nightfly-guicolors'

" plugs
Plug 'preservim/nerdtree'

call plug#end()

" set colorscheme
colorscheme sonokai

" theme won't change line number bg color
highlight clear LineNr

" no theme colors after code
highlight EndOfBuffer ctermbg=NONE


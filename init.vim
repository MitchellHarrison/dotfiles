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
set wrap
set linebreak
set background=dark
set colorcolumn=80


filetype on
filetype plugin on
filetype indent on

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
Plug 'hardselius/warlock'
Plug 'rebelot/kanagawa.nvim', { 'as': 'kanagawa' }

" plugs
Plug 'preservim/nerdtree'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

" pdf viewer for .tex files
let g:vimtex_view_method = 'zathura'
set conceallevel=1
let g:tex_conceal='abdmg'

" UltiSnips binds
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" point to UltiSnips directory
let g:UltiSnipsSnippetDirectories=["MySnippets"]

" custom MD command to activate markdown preview in web browser from inside
" markdown file
command MD MarkdownPreview

" set colorscheme
colorscheme kanagawa
highlight EndOfBuffer ctermbg=None guibg=None

" manually change the color column color
highlight ColorColumn ctermbg=7 guibg=#433f52

" theme won't change line number bg color
highlight clear LineNr

" no theme colors after code
highlight EndOfBuffer ctermbg=NONE

" remaps for LaTeX figures in vim
inoremap <C-j> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-j> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

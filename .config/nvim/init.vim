set number
set relativenumber
set shiftwidth=4 " tabs inserted in normal mode with '>'
set softtabstop=4 " tabs inserted in insert mode default=tabstop
set expandtab " changes tab to spaces
set scrolloff=7
set nohlsearch
set hidden
set nowrap
set signcolumn=yes
" set colorcolumn=80 to color the column 80

" transparent background *******************************************

highlight Normal guibg=none ctermbg=none
highlight LineNr guibg=none ctermbg=none
highlight Folded guibg=none ctermbg=none
highlight NonText guibg=none ctermbg=none
highlight SpecialKey guibg=none ctermbg=none
highlight VertSplit guibg=none ctermbg=none
highlight SignColumn guibg=none ctermbg=none
highlight EndOfBuffer guibg=none ctermbg=none

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround' " surround words with quotes w/ ysw' <ysiw'> puts single quotes in the whole word <ysw'> puts quotes form the cursor position to the end of the word
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocompletion use CocInstall for each different language 
Plug 'tpope/vim-commentary' " commenting with gcc & gc
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" surround.vim

call plug#end()


" remap ***********************************************************

let mapleader=" " " map leader to Space

nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTreeToggle<CR>

" coc.nvim

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

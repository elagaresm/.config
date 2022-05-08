set number
syntax enable
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


call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround' " surround words with quotes w/ ysw' <ysiw'> puts single quotes in the whole word <ysw'> puts quotes form the cursor position to the end of the word
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocompletion use CocInstall for each different language 
Plug 'tpope/vim-commentary' " commenting with gcc & gc
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'overcache/NeoSolarized'
Plug 'mattn/emmet-vim' " emmet for vim
" surround.vim

call plug#end()


" transparent background *******************************************

colorscheme NeoSolarized

highlight Normal guibg=none ctermbg=none
highlight LineNr guibg=none ctermbg=none
highlight Folded guibg=none ctermbg=none
highlight NonText guibg=none ctermbg=none
highlight SpecialKey guibg=none ctermbg=none
highlight VertSplit guibg=none ctermbg=none
highlight SignColumn guibg=none ctermbg=none
highlight EndOfBuffer guibg=none ctermbg=none


" remap ***********************************************************

let mapleader=" " " map leader to Space

nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTreeToggle<CR>

nmap <leader>e <Plug>(emmet-expand-abbr)

" coc.nvim

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

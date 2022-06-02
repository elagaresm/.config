set number
set ignorecase
set relativenumber
set shiftwidth=4 " tabs inserted in normal mode with '>'
set softtabstop=4 " tabs inserted in insert mode default=tabstop
set expandtab " changes tab to spaces
set scrolloff=7
set nohlsearch
set hidden
set nowrap
set signcolumn=yes
set cursorline
set textwidth=80
set foldcolumn=1
" set colorcolumn=80 to color the column 80
" filetype plugin indent on
" filetype indent on

call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround' " surround words with quotes w/ ysw' <ysiw'> puts single quotes in the whole word <ysw'> puts quotes form the cursor position to the end of the word
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocompletion use CocInstall for each different language 
Plug 'tpope/vim-commentary' " commenting with gcc & gc
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mattn/emmet-vim/' " emmet plugin for vim
Plug 'alvan/vim-closetag' " genearting closing tags on html with >
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
" surround.vim
" Plug 'Chiel92/vim-autoformat'

call plug#end()

" remap ***********************************************************

let mapleader=" " " map leader to Space

" NERDTree mapping

nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTreeToggle<CR>

" emmet-vim mapping

nmap <leader>e <Plug>(emmet-expand-abbr)

" coc.nvim

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" transparent background *******************************************


colorscheme onenord
syntax off

highlight Normal guibg=none ctermbg=none
highlight LineNr guibg=none ctermbg=none
highlight Folded guibg=none ctermbg=none
highlight NonText guibg=none ctermbg=none
highlight SpecialKey guibg=none ctermbg=none
highlight VertSplit guibg=none ctermbg=none
highlight SignColumn guibg=none ctermbg=none
highlight EndOfBuffer guibg=none ctermbg=none

" treesitter

lua << EOF
require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = {"html", "css", "javascript", "python", "lua", "vim"},

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- List of parsers to ignore installing (for "all")
    ignore_install = {},

    highlight = {
      -- `false` will disable the whole extension
      enable = true,

      -- list of language that will be disabled
      disable = {},

      indent = {
          enable = true,
          disable = {},
          },

      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = {"html"},
    },
  }
EOF

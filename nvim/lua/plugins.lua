-- if packer is not installed, install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
        install_path })
end

-- returns the file in ./config/<name>
local function get_config(name)
    return string.format('require("config/%s")', name)
end

-- plugins
return require('packer').startup({ function(use)
    -- tracking packer updates
    use 'wbthomason/packer.nvim'

    use 'lukas-reineke/lsp-format.nvim'

    -- indent blank line
    use { "lukas-reineke/indent-blankline.nvim", config = get_config('indent') }

    use 'kshenoy/vim-signature'

    -- onenord colorscheme
    use({ 'olimorris/onedarkpro.nvim', config = get_config("colortheme") })

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = get_config("lualine")
    }

    -- kyazdani42/nvim-tree.lua
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = get_config("nvim-tree")
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } },
        config = get_config('telescope')
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- LSP
    use {
        "williamboman/nvim-lsp-installer",
        {
            "neovim/nvim-lspconfig",
            config = get_config('lsp')
        }
    }

    -- trouble
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = get_config('trouble')
    }

    -- completion with cmp

    use({
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp-signature-help",
        },
        config = get_config("cmp"),
    })


    use { 'onsails/lspkind.nvim' } -- symbols in the completion window

    use({ "rafamadriz/friendly-snippets" })
    use({
        "L3MON4D3/LuaSnip",
        requires = "saadparwaiz1/cmp_luasnip",
        config = get_config('luasnip')
    })

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = get_config('nvim-treesitter')
    }

    -- windwp/nvim-autopairs
    use {
        'windwp/nvim-autopairs',
        config = get_config('autopairs')
    }

    -- tpope/surround.vim
    use { 'tpope/vim-surround' }

    -- tpope/vim-commentary
    use { 'tpope/vim-commentary' }

    -- mattn/emmet-vim
    -- only on html filetypes
    use {
        'mattn/emmet-vim',
        opt = true,
        ft = { 'html' }
    }

    -- autoclosing tag in HTML only
    use {
        'alvan/vim-closetag',
        opt = true,
        ft = { 'html' }
    }

    -- easymotion written in lua
    use {
        'phaazon/hop.nvim',
        branch = 'v1', -- optional but strongly recommended
        config = get_config('hop')
    }

    -- git icons at the left of the screen
    use { 'airblade/vim-gitgutter' }


    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end,
    config = {
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'rounded' })
            end
        }
    } })

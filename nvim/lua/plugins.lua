-- if packer is not installed, install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
end

-- returns the file in ./config/<name>
local function get_config(name)
    return string.format('require("config/%s")', name)
end

-- plugins

return require('packer').startup({ function(use)
    -- tracking packer updates
    use 'wbthomason/packer.nvim'


    -- onenord colorscheme
    use({ "rmehri01/onenord.nvim", config = get_config("onenord") })

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

    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } },
        config = get_config('telescope')
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    use {
        "williamboman/nvim-lsp-installer",
        {
            "neovim/nvim-lspconfig",
            config = get_config('lsp')
        }
    }

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = get_config('trouble')
    }

    use { "lukas-reineke/lsp-format.nvim" }

    -- completion

    use { 'onsails/lspkind.nvim' } -- symbols in the completion window
    use({ "rafamadriz/friendly-snippets" })

    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-nvim-lsp' }

    use({
        "L3MON4D3/LuaSnip",
        requires = "saadparwaiz1/cmp_luasnip",
    })

    use {
        'hrsh7th/nvim-cmp',
        config = get_config('nvim-cmp')
    }


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

    use {
        'alvan/vim-closetag',
        opt = true,
        ft = { 'html' }
    }

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

local onedarkpro = require("onedarkpro")
onedarkpro.setup({
    dark_theme = "onedark", -- The default dark theme
    light_theme = "onedark_vivid", -- The default light theme
    -- Theme can be overwritten with 'onedark' or 'onelight' as a string
    colors = {}, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
    hlgroups = {}, -- Override default highlight groups
    filetype_hlgroups = {}, -- Override default highlight groups for specific filetypes
    plugins = { -- Override which plugins highlight groups are loaded
        native_lsp = true,
        polygot = true,
        treesitter = true,
        -- NOTE: Other plugins have been omitted for brevity
    },
    styles = {
        strings = "NONE", -- Style that is applied to strings
        comments = "NONE", -- Style that is applied to comments
        keywords = "NONE", -- Style that is applied to keywords
        functions = "NONE", -- Style that is applied to functions
        variables = "NONE", -- Style that is applied to variables
        virtual_text = "NONE", -- Style that is applied to virtual text
    },
    options = {
        bold = false, -- Use the themes opinionated bold styles?
        italic = false, -- Use the themes opinionated italic styles?
        underline = false, -- Use the themes opinionated underline styles?
        undercurl = true, -- Use the themes opinionated undercurl styles?
        cursorline = true, -- Use cursorline highlighting?
        transparency = true, -- Use a transparent background?
        terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
        window_unfocussed_color = true, -- When the window is out of focus, change the normal background?
    }
})
onedarkpro.load()

vim.cmd [[
  " colorscheme onedarkpro
  syntax off

  " transparent background

  " highlight Normal guibg=none ctermbg=none
  " highlight LineNr guibg=none ctermbg=none
  " highlight Folded guibg=none ctermbg=none
  " highlight NonText guibg=none ctermbg=none
  " highlight SpecialKey guibg=none ctermbg=none
  " highlight VertSplit guibg=none ctermbg=none
  " highlight SignColumn guibg=none ctermbg=none
  " highlight EndOfBuffer guibg=none ctermbg=none
]]

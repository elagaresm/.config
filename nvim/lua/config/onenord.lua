require('onenord').setup({
})

vim.cmd [[
  colorscheme onenord
  syntax off

  " transparent background

  highlight Normal guibg=none ctermbg=none
  highlight LineNr guibg=none ctermbg=none
  highlight Folded guibg=none ctermbg=none
  highlight NonText guibg=none ctermbg=none
  highlight SpecialKey guibg=none ctermbg=none
  highlight VertSplit guibg=none ctermbg=none
  highlight SignColumn guibg=none ctermbg=none
  highlight EndOfBuffer guibg=none ctermbg=none
]]

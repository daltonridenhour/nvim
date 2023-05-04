local options = {
  tabstop = 2,
  smarttab = true,
  shiftwidth = 2,
  autoindent = true,
  expandtab = true,
  relativenumber = true,
  number = true,
  incsearch = true,
  hlsearch = true,
  cursorline = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim.opt.foldmethod = "indent"
-- vim.opt.foldlevel = 99
-- " search highlighting color
-- highlight Search ctermfg=grey ctermbg=red
-- highlight Macro ctermfg=cyan
-- highlight Special ctermfg=red
-- vim.g.prettier.config.single_quote = 'true'
-- vim.g.prettier.config.trailing_comma = 'all'


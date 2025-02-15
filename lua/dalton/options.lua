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
  guicursor = "",
  signcolumn = "yes",
  termguicolors = true,
  laststatus = 3,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim.g.hardtime_default_on = 1
-- vim.g.hardtime_maxcount = 10

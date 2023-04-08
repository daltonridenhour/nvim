vim.o.background = "dark"
require("gruvbox").setup({
  contrast = "hard",
  palette_overrides = {
    dark0_hard = "#0d1117"
  }
});

vim.cmd([[colorscheme gruvbox]])

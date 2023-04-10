-- vim.o.background = "dark"
-- require("gruvbox").setup({
--   contrast = "hard",
--   palette_overrides = {
--     dark0_hard = "#0d1117"
--   }
-- });
-- vim.cmd([[colorscheme onedark]])
require("tokyonight").setup({
  -- use the night style
  style = "storm",
  -- disable italic for functions
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.bg = "#000000"
  end
})
vim.cmd[[colorscheme tokyonight-storm]]
-- require('onedark').setup {
--     style  = 'deep',
--     colors = {
--       bg0 = '#111111',
--     }
-- }
-- require('onedark').load()

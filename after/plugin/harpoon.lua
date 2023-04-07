local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ma", mark.add_file)
vim.keymap.set("n", "<leader>mf", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>ms", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>md", function() ui.nav_file(2) end)

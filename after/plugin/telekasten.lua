-- require("telekasten").setup({
-- 	home = vim.fn.expand("~/WORK/zettelkasten"), -- Put the name of your notes directory here
-- })
--
-- -- Launch panel if nothing is typed after <leader>z
-- vim.keymap.set("n", "<leader>w", "<cmd>Telekasten panel<CR>")
--
-- -- Most used functions
-- vim.keymap.set("n", "<leader>wf", "<cmd>Telekasten find_notes<CR>")
-- vim.keymap.set("n", "<leader>wg", "<cmd>Telekasten search_notes<CR>")
-- vim.keymap.set("n", "<leader>wd", "<cmd>Telekasten goto_today<CR>")
-- vim.keymap.set("n", "<leader>wz", "<cmd>Telekasten follow_link<CR>")
-- vim.keymap.set("n", "<leader>wn", "<cmd>Telekasten new_note<CR>")
-- vim.keymap.set("n", "<leader>wc", "<cmd>Telekasten show_calendar<CR>")
-- vim.keymap.set("n", "<leader>wb", "<cmd>Telekasten show_backlinks<CR>")
-- vim.keymap.set("n", "<leader>wI", "<cmd>Telekasten insert_img_link<CR>")
--
-- -- Call insert link automatically when we start typing a link
-- vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")

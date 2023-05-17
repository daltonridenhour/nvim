local navbuddy = require("nvim-navbuddy")
-- local actions = require("nvim-navbuddy.actions")

navbuddy.setup({
	lsp = {
		auto_attach = true,
	},
})

vim.keymap.set("n", "<leader>n", navbuddy.open)

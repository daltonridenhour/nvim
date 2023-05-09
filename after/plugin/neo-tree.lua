require("neo-tree").setup({
	filesystem = {
		hijack_netrw_behavior = "open_default",
	},
})

vim.keymap.set("n", "<leader>\\", "<Cmd>Neotree toggle<CR>")

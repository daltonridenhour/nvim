require("neo-tree").setup({
	filesystem = {
		hijack_netrw_behavior = "open_default",
		filtered_items = {
			always_show = {
				".env",
				".env.local",
				".env.development",
				"node_modules",
			},
		},
		window = {
			mappings = {
				["/"] = "noop",
			},
		},
	},
})

vim.keymap.set("n", "<leader>\\", "<Cmd>Neotree toggle<CR>")

require("lualine").setup({
	options = {
		theme = "onedark_dark",
	},
	sections = {
		lualine_c = {
			{
				"filename",
				path = 1,
			},
		},
	},
})

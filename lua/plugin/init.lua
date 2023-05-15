return {
	"folke/neodev.nvim",
	"folke/which-key.nvim",
	"tpope/vim-vinegar",
	"tpope/vim-surround",
	"tpope/vim-fugitive",
	"kshenoy/vim-signature",
	"numToStr/Comment.nvim",
	"michaeljsmith/vim-indent-object",
	"theprimeagen/harpoon",
	"mbbill/undotree",
	"jose-elias-alvarez/null-ls.nvim",
	"MunifTanjim/prettier.nvim",
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons",
	"sharkdp/fd",
	"BurntSushi/ripgrep",
	"nvim-lualine/lualine.nvim",
	"ellisonleao/gruvbox.nvim",
	"folke/tokyonight.nvim",
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
	},
	"tanvirtin/monokai.nvim",
	-- LSP
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
	"lewis6991/gitsigns.nvim",
	"github/copilot.vim",
	-- END LSP
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
	},
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			vim.cmd([[TSUpdate]])
		end,
	},
	-- neotree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
	},
	"pwntester/octo.nvim",
	"MunifTanjim/nui.nvim",
	-- end neotree
}

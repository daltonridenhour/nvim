return {
  "norcalli/nvim-colorizer.lua",
  "takac/vim-hardtime",
  "folke/neodev.nvim",
  "folke/which-key.nvim",
  "tpope/vim-surround",
  "tpope/vim-repeat",
  "kshenoy/vim-signature",
  "nvim-lua/plenary.nvim",
  { "kevinhwang91/nvim-bqf",   ft = "qf" },
  {
    "junegunn/fzf",
    run = function()
      vim.fn["fzf#install"]()
    end,
  },
  "numToStr/Comment.nvim",
  "michaeljsmith/vim-indent-object",
  "theprimeagen/harpoon",
  "mbbill/undotree",
  "jose-elias-alvarez/null-ls.nvim",
  "MunifTanjim/prettier.nvim",
  "nvim-tree/nvim-web-devicons",
  "goolord/alpha-nvim",
  "sharkdp/fd",
  "BurntSushi/ripgrep",
  "nvim-lualine/lualine.nvim",
  "vimwiki/vimwiki",
  "famiu/bufdelete.nvim",
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      'smoka7/hydra.nvim',
    },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
      {
        mode = { 'v', 'n' },
        '<Leader>m',
        '<cmd>MCstart<cr>',
        desc = 'Create a selection for selected text or word under the cursor',
      },
    },
  },

  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
  -- LSP
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim",
        },
      },
    },
  },
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
  "folke/trouble.nvim",
  -- END LSP
  { "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
  { "akinsho/toggleterm.nvim", version = "*", config = true },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.3",
  },
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      vim.cmd([[TSUpdate]])
    end,
  },
  "nvim-treesitter/nvim-treesitter-textobjects",
  -- neotree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
  },
  "pwntester/octo.nvim",
  "MunifTanjim/nui.nvim",
  -- end neotree
}

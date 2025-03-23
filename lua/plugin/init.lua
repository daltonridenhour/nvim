return {
  "norcalli/nvim-colorizer.lua",
  "takac/vim-hardtime",
  "folke/neodev.nvim",
  "folke/which-key.nvim",
  "tpope/vim-surround",
  "tpope/vim-repeat",
  "kshenoy/vim-signature",
  "nvim-lua/plenary.nvim",
  "dmmulroy/ts-error-translator.nvim",
  "JoosepAlviste/nvim-ts-context-commentstring",
  { 'echasnovski/mini.nvim', version = '*' },
  -- {
  --   'stevearc/aerial.nvim',
  --   opts = {},
  --   -- Optional dependencies
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --     "nvim-tree/nvim-web-devicons"
  --   },
  -- },
  { "kevinhwang91/nvim-bqf", ft = "qf" },
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
        -- "SmiteshP/nvim-navbuddy",
        -- dependencies = {
        --   "SmiteshP/nvim-navic",
        --   "MunifTanjim/nui.nvim",
        -- },
      },
    },
  },
  {
    "SmiteshP/nvim-navbuddy",
    dependencies = {
      "neovim/nvim-lspconfig",
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim",
      "numToStr/Comment.nvim",        -- Optional
      "nvim-telescope/telescope.nvim" -- Optional
    },
    opts = { lsp = { auto_attach = true } }
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
  -- "github/copilot.vim",
  {
    "folke/trouble.nvim",
    tag = "v3.6.0"
  },
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
  -- "pwntester/octo.nvim",
  "MunifTanjim/nui.nvim",
  -- end neotree
  "windwp/nvim-ts-autotag",
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
    opts = {
      provider = "claude",
      claude = {
        endpoint = "https://api.anthropic.com",
        model = "claude-3-7-sonnet-20250219",
        temperature = 0,
        max_tokens = 8096,
      },
      -- add any opts here
      -- for example
      -- provider = "openai",
      -- openai = {
      --   endpoint = "https://api.openai.com/v1",
      --   model = "gpt-4o", -- your desired model (or use gpt-4o, etc.)
      --   timeout = 30000,  -- timeout in milliseconds
      --   temperature = 0,  -- adjust if needed
      --   max_tokens = 4096,
      -- },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "echasnovski/mini.pick",         -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp",              -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua",              -- for file_selector provider fzf
      "nvim-tree/nvim-web-devicons",   -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua",        -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  }
}

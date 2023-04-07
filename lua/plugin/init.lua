-- Plug 'leafgarland/typescript-vim'
-- Plug 'VundleVim/Vundle.vim'
-- Plug 'tpope/vim-vividchalk'
-- Plug 'tpope/vim-vinegar'
-- Plug 'tpope/vim-projectionist'
-- Plug 'tpope/vim-surround'
-- Plug 'tpope/vim-abolish'
-- Plug 'tpope/vim-fugitive'
-- Plug 'scrooloose/nerdtree'
-- Plug 'digitaltoad/vim-pug'
-- Plug 'posva/vim-vue'
-- " Plug 'SirVer/ultisnips'
-- Plug 'honza/vim-snippets'
-- Plug 'wincent/command-t'
-- Plug 'tmhedberg/SimpylFold'
-- Plug 'kien/ctrlp.vim'
-- Plug 'kchmck/vim-coffee-script'
-- Plug 'prettier/vim-prettier'
-- Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
-- Plug 'junegunn/fzf.vim'
-- Plug 'maxmellon/vim-jsx-pretty'
-- Plug 'pangloss/vim-javascript'
-- Plug 'kshenoy/vim-signature'
-- Plug 'tpope/vim-commentary'
-- Plug 'christoomey/vim-system-copy'
-- Plug 'michaeljsmith/vim-indent-object'
-- {
-- 	'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- 	dependencies = { 'nvim-lua/plenary.nvim' }
-- },
--
--  {
--    'ibhagwan/fzf-lua',
--    -- optional for icon support
--    requires = { 'nvim-tree/nvim-web-devicons' }
--  },
--  'junegunn/fzf',
--  'junegunn/fzf.vim',
return {
	"folke/neodev.nvim",
	"folke/which-key.nvim",
	"tpope/vim-vinegar",
	"tpope/vim-surround",
	"tpope/vim-fugitive",
	'kshenoy/vim-signature',
	-- 'tpope/vim-commentary',
  'numToStr/Comment.nvim',
	'michaeljsmith/vim-indent-object',
	'theprimeagen/harpoon',
  'mbbill/undotree',
  'neovim/nvim-lspconfig',
  'jose-elias-alvarez/null-ls.nvim',
  'MunifTanjim/prettier.nvim',
  'nvim-lua/plenary.nvim',
  'nvim-tree/nvim-web-devicons',
  'sharkdp/fd',
  'BurntSushi/ripgrep',
  --{
  --  'ibhagwan/fzf-lua',
  --  -- optional for icon support
  --  requires = { 'nvim-tree/nvim-web-devicons' }
  --},
  --
  {
  	'nvim-telescope/telescope.nvim', tag = '0.1.1',
  },
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	{
		'nvim-treesitter/nvim-treesitter', 
		config = function()
			vim.cmd([[TSUpdate]])
		end
	},
	{
		"tpope/vim-vividchalk",
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme vividchalk]])
		end,
	},
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  },
}

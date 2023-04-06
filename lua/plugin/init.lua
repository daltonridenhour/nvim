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
return {
	"folke/neodev.nvim",
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
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
	"tpope/vim-vinegar",
	"tpope/vim-surround",
	"tpope/vim-fugitive",
	'kshenoy/vim-signature',
	'tpope/vim-commentary',
	'michaeljsmith/vim-indent-object',
}

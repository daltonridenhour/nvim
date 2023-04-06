vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-f>", ":Files<CR>")
vim.keymap.set("n", "<C-g>", ":Rg<Cr>")

vim.keymap.set("n", "<C-h>", "<C-w>h");
vim.keymap.set("n", "<C-j>", "<C-w>j");
vim.keymap.set("n", "<C-k>", "<C-w>k");
vim.keymap.set("n", "<C-l>", "<C-w>l");

vim.keymap.set("n", "<space>", "za");

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
-- call plug#end()

-- filetype plugin indent on
-- syntax on
-- colorscheme vividchalk 
-- set encoding=utf-8
-- set tabstop=2
-- set smarttab
-- set shiftwidth=2
-- set autoindent
-- set expandtab
-- set foldmethod=indent
-- set foldlevel=99
-- set wildignore+=*/node_modules/*,*.so,*.swp,*.swn,*.swo,*/2016-archive/*
-- set number relativenumber
-- set nu rnu
-- set incsearch
-- set hlsearch
-- 
-- " search highlighting color
-- highlight Search ctermfg=grey ctermbg=red
-- highlight Macro ctermfg=cyan
-- highlight Special ctermfg=red
-- 
-- nnoremap <space> za
-- nnoremap <C-f> :Files<CR>
-- nnoremap <C-g> :Rg<Cr>
-- nnoremap <C-d> <C-d>zz
-- nnoremap <C-u> <C-u>zz
-- let g:SimpylFold_docstring_preview=1
-- " let g:UltiSnipsSnippetDirectories=['UltiSnips', 'mysnippets']
-- 
-- let g:jsx_ext_required = 0
-- let NERDTreeShowHidden = 1
-- let NERDTreeIgnore=['.git$[[dir]]', '.swp', '.swo', '.DS_Store']
-- 
-- let g:prettier#config#single_quote = 'true'
-- let g:prettier#config#trailing_comma = 'all'

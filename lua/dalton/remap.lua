vim.g.mapleader = " "
local keymap = vim.keymap;

keymap.set("n", "<leader><leader>", vim.cmd.Ex)

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "H", "Hzz")
keymap.set("n", "L", "Lzz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("n", "<C-h>", "<C-w>h");
keymap.set("n", "<C-j>", "<C-w>j");
keymap.set("n", "<C-k>", "<C-w>k");
keymap.set("n", "<C-l>", "<C-w>l");

keymap.set("n", "ss", ":split<Return><C-w>w");
keymap.set("n", "sv", ":vsplit<Return><C-w>w");

-- vim.keymap.set("n", "<space>a", "za");

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

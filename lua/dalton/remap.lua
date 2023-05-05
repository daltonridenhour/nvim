vim.g.mapleader = " "
local keymap = vim.keymap;

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

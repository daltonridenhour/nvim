require("trouble").setup({
  signs = { error = "", warning = "", hint = "󱂃", info = "", other = "󰠣" },
  auto_preview = true,
  multiline = true,
})

vim.keymap.set("n", "<leader>ee", "<cmd>Trouble diagnostics toggle<cr>", { silent = true, noremap = true })
-- vim.keymap.set("n", "<leader>ew", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
-- vim.keymap.set("n", "<leader>ed", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
-- vim.keymap.set("n", "<leader>el", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>eq", "<cmd>Trouble qFlist toggle<cr>", { silent = true, noremap = true })
-- vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })

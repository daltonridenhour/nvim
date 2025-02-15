local navbuddy = require("nvim-navbuddy")
-- local actions = require("nvim-navbuddy.actions")
--
-- navbuddy.setup({
--   lsp = {
--     auto_attach = true,
--   },
-- })
--
vim.keymap.set("n", "<leader>s", navbuddy.open)
--
-- local navbuddy = require("nvim-navbuddy")
--
-- require("lspconfig").clangd.setup {
--     on_attach = function(client, bufnr)
--         navbuddy.attach(client, bufnr)
--     end
-- }
--
-- vim.keymap.set("n", "<leader>l", navbuddy.open)

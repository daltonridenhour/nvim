require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tsserver", "eslint" },
})

local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

local on_attach = function(client, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  if client.name == "tsserver" then
    client.server_capabilities.documentFormattingProvider = false
  end

  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", bufopts)
  vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format()' ]])

  vim.keymap.set("n", "<leader>p", ":Format<cr>", bufopts)
end

lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = lsp_capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})
lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = lsp_capabilities,
})

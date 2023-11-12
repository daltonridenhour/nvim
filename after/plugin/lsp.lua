-- require("lsp_lines").setup()
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tsserver", "eslint" },
})
local navbuddy = require("nvim-navbuddy")

local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

local signs = { Error = "", Warn = "", Hint = "󱂃", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  virtual_text = false,
})

local on_attach = function(client, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  if client.name == "tsserver" then
    client.server_capabilities.documentFormattingProvider = false
  end

  vim.keymap.set("n", "<leader>in", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "<leader>ia", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "id", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "ii", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "ir", require("telescope.builtin").lsp_references, bufopts)
  vim.keymap.set("n", "ih", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", bufopts)
  vim.keymap.set("n", "<leader>dq", vim.lsp.diagnostic.set_loclist, bufopts)
  vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format()' ]])

  -- vim.keymap.set("n", "<leader>p", ":Format<cr>", bufopts)
  navbuddy.attach(client, bufnr)
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

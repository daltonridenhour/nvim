-- require("lsp_lines").setup()
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "ts_ls", "eslint", "tailwindcss", },
})
-- local navbuddy = require("nvim-navbuddy")

local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

local signs = { Error = "", Warn = "", Hint = "󱂃", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  virtual_text = false,
  float = {
    header = false,
    border = "rounded",
    focusable = true
  }
})

local on_attach = function(client, bufnr)
  -- local bufnr = args.buf
  -- local client = vim.lsp.get_client_by_id(args.data.client_id)

  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  if client.name == "ts_ls" then
    client.server_capabilities.documentFormattingProvider = false
  end

  vim.keymap.set("n", "<leader>ie", vim.diagnostic.open_float, bufopts)
  vim.keymap.set("n", "<leader>in", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "<leader>ia", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "<leader>id", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "<leader>ii", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "<leader>ir", require("telescope.builtin").lsp_references, bufopts)
  vim.keymap.set("n", "<leader>ih", vim.lsp.buf.hover, bufopts)
  -- vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", bufopts)
  -- vim.keymap.set("n", "<leader>dq", vim.lsp.diagnostic.set_loclist, bufopts)
  vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format()' ]])

  -- vim.keymap.set("n", "<leader>p", ":Format<cr>", bufopts)
  -- navbuddy.attach(client, bufnr)
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
lspconfig.ts_ls.setup({
  on_attach = on_attach,
  capabilities = lsp_capabilities,
})

lspconfig.tailwindcss.setup({
  on_attach = on_attach,
  capabilities = lsp_capabilities,
})

-- vim.api.nvim_create_autocmd('LspAttach', { callback = on_attach })

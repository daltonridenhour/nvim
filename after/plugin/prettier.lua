local prettier = require("prettier")

prettier.setup({
  bin = 'prettierd', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "yaml",
    "lua",
  },
})

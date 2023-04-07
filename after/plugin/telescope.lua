local telescope = require('telescope')
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})

telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-f>"] = actions.close,
        ["<C-g>"] = actions.close,
      },
      n = {
        ["<C-f>"] = actions.close,
        ["<C-g>"] = actions.close,
        ["<leader>f"] = actions.close,
        ["<leader>s"] = actions.close,
      }
    }
  }
}

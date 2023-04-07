local Comment = require('Comment')
local call = require('Comment.api').call
Comment.setup()

vim.keymap.set("n", "<leader>c", call('toggle.linewise', 'g@'), { expr = true })
vim.keymap.set("n", "<leader>cc", call('toggle.linewise.current', 'g@$'), { expr = true } )

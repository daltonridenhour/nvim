local bufdelete = require("bufdelete")

local deleteCurrentBuffer = function()
	bufdelete.bufdelete(0, true)
end

vim.keymap.set("n", "<leader>q", deleteCurrentBuffer, { silent = true, noremap = true })

require("toggleterm").setup({
	open_mapping = [[<c-t>]],
	direction = "float",
	hide_numbers = true,
})

local Terminal = require("toggleterm.terminal").Terminal
local cur = Terminal:new({ cmd = "lazygit", hidden = true })
local mkt = Terminal:new({ cmd = "lazygit", dir = "~/WORK/peddle/peddle-marketing", hidden = true })
local sell = Terminal:new({ cmd = "lazygit", dir = "~/WORK/peddle/peddle-seller", hidden = true })
local pub = Terminal:new({ cmd = "lazygit", dir = "~/WORK/peddle/peddle-publisher-embed", hidden = true })
local pdf = Terminal:new({ cmd = "lazygit", dir = "~/WORK/peddle/peddle-pdf-service", hidden = true })
local apex = Terminal:new({ cmd = "lazygit", dir = "~/WORK/peddle/peddle-apex", hidden = true })

local curT = function()
	cur:toggle()
end
local mktT = function()
	mkt:toggle()
end
local sellT = function()
	sell:toggle()
end
local apexT = function()
	apex:toggle()
end
local pubT = function()
	pub:toggle()
end
local pdfT = function()
	pdf:toggle()
end

vim.keymap.set("n", "<leader>lg", curT, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>la", apexT, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ls", sellT, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>lm", mktT, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>lp", pubT, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ld", pdfT, { noremap = true, silent = true })

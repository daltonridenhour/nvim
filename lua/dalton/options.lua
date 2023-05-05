local options = {
	tabstop = 2,
	smarttab = true,
	shiftwidth = 2,
	autoindent = true,
	expandtab = true,
	relativenumber = true,
	number = true,
	incsearch = true,
	hlsearch = true,
	cursorline = true,
	guicursor = "",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

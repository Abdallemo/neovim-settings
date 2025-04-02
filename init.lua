--loads unrealted settings to lazy
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = true,
	severity_sort = false,
})

require("config.lazy")

--test
vim.cmd("set wildmenu")
vim.cmd('set wildmode=full')

vim.cmd('set wildmode=full')
vim.cmd('set wildignorecase')
vim.cmd('set wildoptions=pum')



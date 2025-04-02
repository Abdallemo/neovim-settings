return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = false,
			window = {
				position = "left",
				width = 30,
        padding = 0,
			},
			filesystem = {
				follow_current_file = { enabled = true },
			},
		})

		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left toggle<CR>")
		vim.keymap.set("n", "<leader>nb", ":Neotree buffers reveal left toggle<CR>")
		vim.keymap.set("n", "<leader>ng", ":Neotree git_status reveal float toggle<CR>")
	end,
}

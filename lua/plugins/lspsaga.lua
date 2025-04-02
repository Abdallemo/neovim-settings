return {
	"nvimdev/lspsaga.nvim",
	config = function()
		require("lspsaga").setup({
			lightbulb = { enable = false },
			diagnostic = {
				virtual_text = true,
				show_code_action = false,
				on_insert = true,
				on_insert_follow = true,
			},
		})
	end,
}

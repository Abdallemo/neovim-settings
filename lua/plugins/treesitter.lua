return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			--ensure_installed = {"javascript","c","rust","go","java","lua"},
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
		require("nvim-treesitter.install").compilers = { "gcc", "clang", "cl" }
		require("nvim-treesitter.install").prefer_git = false
	end,
}

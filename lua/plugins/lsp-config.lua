return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{

		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
        lazy=false,
        auto_install = true,
				--ensure_installed = { "lua_ls", "ts_ls", "tailwindcss", "html", "vtsls" },
				ensure_installed = {"eslint"},
			})
		end,
	},


	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
       local capabilities = require('cmp_nvim_lsp').default_capabilities()
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			--lspconfig.ts_ls.setup ({})
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})

			lspconfig.vtsls.setup({
				capabilities = capabilities,
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}

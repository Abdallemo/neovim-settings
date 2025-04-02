return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    --local none_ls = require("none-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        --null_ls.builtins.completion.spell,
        --null_ls.builtins.diagnostics.eslint_d,
        --require("none-ls.diagnostics.eslint")
        require("none-ls.diagnostics.eslint"),
      },
    })
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
  end,
}

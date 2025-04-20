return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15,                       -- Height in lines (adjust as needed)
      direction = "horizontal",        -- Bottom panel
      open_mapping = [[<C-\>]],        -- Your original toggle key
      shade_terminals = true,          -- Subtle background dimming
      persist_size = true,             -- Remembers size between sessions
      close_on_exit = false,           -- Keep terminal alive
      highlights = {
        Normal = { guibg = "#1e1e2e" }, -- Match your colorscheme
        NormalFloat = { link = "Normal" }, -- Consistent styling
      },
    })

    -- Optional: NPM dev terminal (same horizontal style)
    local Terminal = require("toggleterm.terminal").Terminal
    local npm_dev = Terminal:new({
      cmd = "npm run dev",
      direction = "horizontal",
      hidden = true,
    })

    -- Keymaps (minimal style like your neo-tree setup)
    vim.keymap.set("n", "<leader>tn", function()
      npm_dev:toggle()
    end)
  end,
}

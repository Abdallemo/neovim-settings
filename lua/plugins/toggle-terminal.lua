return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      -- Custom configuration
      size = 20,
      open_mapping = [[<c-\>]], -- Ctrl+\ to toggle terminal
      direction = "float",   -- or "horizontal"/"vertical"
      float_opts = {
        border = "rounded",  -- Single, double, shadow, curved, etc.
        winblend = 3,        -- Transparency (0-100)
      },
      -- Command to run when terminal opens (optional)
    })

    -- Custom terminal commands
    local Terminal = require("toggleterm.terminal").Terminal

    -- NPM Dev Server (custom command)
    local npm_dev = Terminal:new({
      cmd = "npm run dev",
      hidden = true,
      direction = "float",
      on_open = function(term)
        vim.cmd("startinsert!")
      end,
    })

    -- Keymaps
    vim.keymap.set("n", "<leader>td", function()
      npm_dev:toggle()
    end, { desc = "Toggle npm dev" })
    vim.keymap.set("n", "<leader>tg", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle float term" })
    vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" }) -- Escape to normal mode
  end,
}

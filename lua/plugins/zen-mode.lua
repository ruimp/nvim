return {
  "folke/zen-mode.nvim",
  opts = {
    plugins = {
      kitty = {
        enabled = true,
        font = "+4",
      }
    },
  },
  keys = {
    {
      "<leader>tz",
      mode = "n",
      function() require("zen-mode").toggle() end,
      desc = "Zen",
    },
  },
}

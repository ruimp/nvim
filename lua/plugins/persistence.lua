return {
  "folke/persistence.nvim",
  event = "BufReadPre",
  opts = {},
  keys = {
    {
      "<leader>qs",
      function()
        require("persistence").load()
      end,
      mode = "n",
      desc = "Restore directory",
    },
    {
      "<leader>ql",
      function()
        require("persistence").load({ last = true })
      end,
      mode = "n",
      desc = "Restore last",
    },
  },
}

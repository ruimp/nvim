return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  keys = {
    {
      "]t",
      mode = "n",
      function() require("todo-comments").jump_next() end,
      desc = "Next Comment"
    },
    {
      "[t",
      mode = "n",
      function() require("todo-comments").jump_prev() end,
      desc = "Previous Comment"
    },
    -- TODO: Do somethings here
    {
      "<leader>xt",
      mode = "n",
      "<cmd>TodoQuickFix<cr>",
      desc = "TODO"
    },
    -- TODO: Do important!! here
    {
      "<leader>xT",
      mode = "n",
      "<cmd>TodoLocList<cr>",
      desc = "Local TODO"
    },
    {
      "<leader>ft",
      mode = "n",
      "<cmd>TodoTelescope<cr>",
      desc = "TODO"
    },
  },
}

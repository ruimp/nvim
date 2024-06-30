return {
  "folke/todo-comments.nvim",
  cmd = { "TodoTrouble" },
  event = { "BufNewFile", "BufReadPre" },
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  keys = {
    {
      "]t",
      function()
        require("todo-comments").jump_next()
      end,
      desc = "Next todo",
    },
    {
      "[t",
      function()
        require("todo-comments").prev()
      end,
      desc = "Previous todo",
    },
  },
}

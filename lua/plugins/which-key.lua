return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    wk.setup({ icons = {
      mappings = false,
      separator = ">",
    } })
    wk.add({
      { "<leader>b", group = "Buffers" },
      { "<leader>f", group = "Find" },
      { "<leader>g", group = "Git" },
      { "<leader>c", group = "Code" },
      { "<leader>C", group = "Comment" },
      { "<leader>t", group = "Toggle" },
      { "<leader>x", group = "Diagnostics" },
      { "<leader>r", group = "Rename" },
      { "<localleader>l", group = "VimTeX" },
    })
  end,
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Local Keymaps",
    },
  },
}

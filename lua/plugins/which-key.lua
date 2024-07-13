return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    require("which-key").setup()
    require("which-key").add({
      { "<leader>b", group = "Buffers" },
      { "<leader>c", group = "Code" },
      { "<leader>f", group = "Find" },
      { "<leader>g", group = "Git" },
      { "<leader>q", group = "Quit" },
      { "<leader>t", group = "Toggle" },
      { "<leader>x", group = "Fix", icon = " " },
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Keymaps",
        icon = " ",
      },
    })
  end,
}

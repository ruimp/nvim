return {
  "LudoPinelli/comment-box.nvim",
  config = function()
    require("which-key").add({
      mode = { "n", "v" },
      { "<leader>C", group = "Comment", icon = "󱀡 " },
      { "<leader>Cb", "<cmd>CBlcbox<cr>", desc = "Box" },
      { "<leader>Ct", "<cmd>CBllline<cr>", desc = "Title Line" },
      { "<leader>Cl", "<cmd>CBline<cr>", desc = "Line" },
      { "<leader>Cd", "<cmd>CBd<cr>", desc = "Delete box" },
    })
  end,
}

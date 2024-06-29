return {
  "LudoPinelli/comment-box.nvim",
  config = function()
    require("which-key").register({
      ["<Leader>"] = {
        C = {
          name = "Comment Boxes",
          b = { "<Cmd>CBlcbox<CR>", "Box Title" },
          t = { "<Cmd>CBllline<CR>", "Titled Line" },
          l = { "<Cmd>CBline<CR>", "Simple Line" },
          m = { "<Cmd>CBllbox14<CR>", "Marked" },
          d = { "<Cmd>CBd<CR>", "Remove a box" },
        },
      },
    })
  end,
}

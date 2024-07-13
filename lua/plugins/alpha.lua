return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local alpha = require("alpha")
    local theta = require("alpha.themes.theta")
    alpha.setup(theta.config)
    require("which-key").add({
      "<leader>D",
      "<cmd>Alpha<cr>",
      mode = "n",
      desc = "Dashboard",
      icon = " ",
    })
    vim.keymap.set("n", "<leader>D", "<cmd>Alpha<cr>", { desc = "Dashboard" })
  end,
}

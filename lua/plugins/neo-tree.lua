-- File explorer tree
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local tree = require("neo-tree")
    tree.setup({
      wndow = {
        mappings = {
          ["P"] = { "toggle_preview", config = { use_float = true } },
        },
      },
    })
    vim.keymap.set("n", "<leader>fe", "<cmd>Neotree toggle<cr>", { desc = "Tree" })
  end,
}

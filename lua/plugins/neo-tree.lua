-- File explorer tree
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    wndow = {
      mappings = {
        ["P"] = { "toggle_preview", config = { use_float = true } },
      },
    },
  },
  keys = {
    {
      "<leader>fe",
      mode = "n",
      "<cmd>Neotree toggle<cr>",
      desc = "File Tree"
    },
  },
}

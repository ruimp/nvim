return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
	keys = {
		{
			"<leader>fe",
			mode = "n",
			"<cmd>NvimTreeToggle<cr>",
			desc = "File Tree",
		},
	},
  opts = {},
}

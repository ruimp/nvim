return {
	"goolord/alpha-nvim",
  keys = {
    {
      "<leader>td",
      mode = "n",
      "<cmd>Alpha<cr>",
      desc = "Dashboard",
    },
  },
	config = function()
		require("alpha").setup(require("alpha.themes.dashboard").config)
	end,
}

return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"nvim-telescope/telescope.nvim",
	},
	opts = {},
	keys = {
		{
			"<leader>Gg",
			mode = "n",
			function()
				require("neogit").open()
			end,
			desc = "Open",
		},
		{
			"<leader>Gs",
			mode = "n",
			function()
				require("neogit").open({ kind = "auto" })
			end,
			desc = "Split",
		},
	},
}

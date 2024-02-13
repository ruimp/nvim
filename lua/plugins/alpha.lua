return {
	"goolord/alpha-nvim",
	config = function()
		require("alpha").setup(require("alpha.themes.dashboard").config)
		vim.keymap.set("n", "<leader>td", "<cmd>Alpha<cr>", { desc = "Dashboard" })
	end,
}

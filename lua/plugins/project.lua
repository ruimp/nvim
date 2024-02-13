return {
	"coffebar/neovim-project",
	opts = {
		projects = { -- define project roots
			"~/Projects/*",
			"~/.config/*",
		},
	},
	init = function()
		-- enable saving the state of plugins in the session
		vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
	end,
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope.nvim", branch = "0.1.x" },
		{ "Shatur/neovim-session-manager" },
	},
	lazy = false,
	priority = 100,
	keys = {
		{
			"<leader>fp",
			mode = "n",
			"<cmd>Telescope neovim-project discover<cr>",
			desc = "Projects",
		},
		{
			"<leader>fP",
			mode = "n",
			"<cmd>Telescope neovim-project history<cr>",
			desc = "Recent Projects",
		},
		{
			"<leader>R",
			mode = "n",
			"<cmd>NeovimProjectLoadRecent<cr>",
			desc = "Reload Session",
		},
	},
}

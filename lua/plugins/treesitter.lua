return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"lua",
			"vimdoc",
			"markdown",
			"markdown_inline",
		},
		highlight = { enable = true },
		indent = { enable = true },
	},
}

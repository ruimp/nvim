local options = {
	-- Indenting
	expandtab = true,
	tabstop = 2,
	shiftwidth = 2,

	-- Line numbers
	number = true,
	relativenumber = true,

	-- Scroll
	scrolloff = 8,
	sidescrolloff = 8,

	-- Splitting
	splitbelow = true,
	splitright = true,

	-- Undo
	undofile = true,

	-- Visual
	termguicolors = true,
	cursorline = true,
	signcolumn = "yes",
	colorcolumn = "80",
	completeopt = { "menuone", "noselect" },
	timeout = true,
	timeoutlen = 300,
	conceallevel = 2,

	-- Search
	ignorecase = true,
	hlsearch = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

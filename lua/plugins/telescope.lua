-- f Fuzzy finder
return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
		},
	},
	opts = {
		extensions = {
			fzf = {
				fuzzy = true,
				override_generic_sorter = true,
				override_file_sorter = true,
				case_mode = "smart_case",
			},
		},
	},
	keys = {
		{
			"<leader>ff",
			mode = "n",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Files",
		},
		{
			"<leader>fg",
			mode = "n",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Text",
		},
		{
			"<leader>fb",
			mode = "n",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>fh",
			mode = "n",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Help Tags",
		},
		{
			"<leader>fr",
			mode = "n",
			function()
				require("telescope.builtin").oldfiles()
			end,
			desc = "Recent Files",
		},
	},
	config = function()
		local telescope = require("telescope")
		telescope.load_extension("fzf")
	end,
}

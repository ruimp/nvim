return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			-- parsers
			lspconfig.lua_ls.setup({})
			lspconfig.typst_lsp.setup({})
			lspconfig.marksman.setup({})
			-- keymaps
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					vim.keymap.set(
						"n",
						"<leader>gD",
						vim.lsp.buf.declaration,
						{ buffer = ev.buf, desc = "Declaration" }
					)
					vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer = ev.buf, desc = "Definition" })
					vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = ev.buf, desc = "Hover" })
					vim.keymap.set(
						"n",
						"<leader>gi",
						vim.lsp.buf.implementation,
						{ buffer = ev.buf, desc = "Implementation" }
					)
					vim.keymap.set(
						{ "n", "v" },
						"<leader>ca",
						vim.lsp.buf.code_action,
						{ buffer = ev.buf, desc = "Action" }
					)
					vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { buffer = ev.buf, desc = "References" })
				end,
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
		end,
	},
}

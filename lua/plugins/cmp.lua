return {
  -- Automaric parenthesis
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
  -- Formatters
	{
		"stevearc/conform.nvim",
		config = function()
      -- setup
			local opts = {
				formatters_by_ft = {
					lua = { "stylua" },
					markdown = { "prettier" },
					haskell = { "fourmolu" },
				},
			}
			require("conform").setup(opts)
      -- format on save
			vim.api.nvim_create_autocmd({ "BufWritePre" }, {
				callback = function()
					require("conform").format()
				end,
			})
		end,
    -- keymaps
		keys = {
			{
				"<leader>cf",
				mode = "n",
				function()
					require("conform").format()
				end,
				desc = "Format",
			},
		},
	},
  -- Linters
	{
		"mfussenegger/nvim-lint",
		config = function()
			require("lint").linters_by_ft = {
				lua = { "luacheck" },
				markdown = { "markdownlint" },
			}
      -- Lint on save
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
  -- Completions
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local cmp = require("cmp")
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			local luasnip = require("luasnip")
			local servers = {
				"lua_ls",
				"tsserver",
				"marksman",
				"hls",
			}
			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({
					capabilities = capabilities,
				})
			end
			cmp.setup({
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				sources = {
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer" },
				},
				mapping = cmp.mapping.preset.insert({
					["<C-u>"] = cmp.mapping.scroll_docs(-4),
					["<C-d>"] = cmp.mapping.scroll_docs(4),
					["<C-n>"] = cmp.mapping.select_next_item(),
					["<C-m>"] = cmp.mapping.select_prev_item(),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-CR>"] = cmp.mapping.confirm({
						behavior = cmp.ConfirmBehavior.Replace,
						select = true,
					}),
				}),
			})
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end,
	},
}

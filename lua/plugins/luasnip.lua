return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	build = "make install_jsregexp",
	config = function()
		local ls = require("luasnip")
		require("luasnip.loaders.from_lua").lazy_load({
			paths = "~/.config/nvim/snippets",
		})
		vim.keymap.set("i", "<C-k>", function()
			ls.expand()
		end, { silent = true })
		vim.keymap.set({ "i", "s" }, "<C-l>", function()
			ls.jump(1)
		end, { silent = true })
		vim.keymap.set({ "i", "s" }, "<C-j>", function()
			ls.jump(-1)
		end, { silent = true })
		vim.keymap.set({ "i", "s" }, "<C-e>", function()
			if ls.choice_active() then
				ls.change_choice(1)
			end
		end, { silent = true })
	end,
}

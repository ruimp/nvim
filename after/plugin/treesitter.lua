local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = { "lua", "luadoc", "vim", "vimdoc" },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})

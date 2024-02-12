-- Display keymaps
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    require("which-key").setup({})
    local wk = require("which-key")
    local mappings = {
      f = "find",
      g = "goto",
      c = "code",
      h = "harpoon",
      t = "toggle",
      x = "trouble"
    }
    local opts = { prefix = "<leader>" }
    wk.register(mappings, opts)
  end,
}

return {
  -- Tokyonight
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   load = false,
  --   config = function()
  --     require("tokyonight").setup({ style = "night" })
  --     vim.cmd.colorscheme("tokyonight")
  --   end,
  -- },
  -- Zenbones
  {
    "zenbones-theme/zenbones.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      vim.cmd.background = "light"
      vim.cmd.colorscheme = "zenwritten"
      vim.g.lightness = "bright"
    end,
  },
}
